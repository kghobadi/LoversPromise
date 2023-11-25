using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Throws out line, if hook snags something we reel it in.
/// Boats become children of this as we pull it.
/// Is itself interactable - can be picked up and put down. 
/// </summary>
public class FishingRod : Interactable
{
    private Rigidbody hookBody;
    private FirstPersonController fpc;

    [SerializeField] private LayerMask waterLayer;
    [SerializeField] private FishingStates fishingState;
    private enum FishingStates
    {
        INACTIVE = 0,
        ACTIVE = 1,
        THROWN = 2,
        IDLING = 3,
        REELING = 4,
    }
    
    private float throwForce;
    [SerializeField]
    private float throwForceMultiplier = 5f;
    [SerializeField]
    private float throwForceBase = 50f;
    [Tooltip("Actual throw force")]
    [SerializeField] private float trueThrow;

    private float chargeTimer;
    [Tooltip("Max value for time length of a Charge for throw")]
    [SerializeField] private float chargeMax;
    
    [SerializeField]
    private float reelSpeed = 15f;

    private void Awake()
    {
        hookBody = GetComponent<Rigidbody>();
        fpc = FindObjectOfType<FirstPersonController>();
    }

    void Start()
    {
        fishingState = FishingStates.INACTIVE;
    }

    public override void Interact()
    {
        base.Interact();

        if (fishingState == FishingStates.INACTIVE)
        {
            PickUpRod();
        }
    }

    void PickUpRod()
    {
        fishingState = FishingStates.ACTIVE;
        transform.SetParent(fpc.transform);
        transform.localPosition = fpc.holdingSpot;
        hookBody.useGravity = false;
    }
    
    void DropRod()
    {
        fishingState = FishingStates.INACTIVE;
        transform.SetParent(null);
        hookBody.useGravity = true;
    }

    private void Update()
    {
        if (fishingState == FishingStates.ACTIVE)
        {
            //grab input
            if (Input.GetMouseButtonDown(0))
            {
                chargeTimer = 0;
            }
            if (Input.GetMouseButton(0))
            {
                chargeTimer += Time.deltaTime;
            }
            if (Input.GetMouseButtonUp(0))
            {
                ThrowLine();
            }
            
            //drop rod
            if (Input.GetMouseButtonDown(1))
            {
                DropRod();
            }
        }
    }

    void FixedUpdate()
    {
        //apply physics
        if (fishingState == FishingStates.THROWN)
        {
            hookBody.AddForce(fpc.transform.forward * trueThrow);
        }
        //apply physics
        if (fishingState == FishingStates.REELING)
        {
            if (Input.GetMouseButton(0))
            {
                //get dir of player
                Vector3 dirToPlayer = transform.position - fpc.transform.position;
                hookBody.AddForce(dirToPlayer * reelSpeed);
            }
        }
    }

    void ThrowLine()
    {
        chargeTimer = Mathf.Clamp(chargeTimer, 0, chargeMax);
        trueThrow = throwForceBase + chargeTimer * throwForceMultiplier;
        hookBody.AddForce(fpc.transform.forward * trueThrow);

        fishingState = FishingStates.THROWN;
    }

    void Plop()
    {
        fishingState = FishingStates.IDLING;
        transform.SetParent(null);
        //do water splash particles n sound 
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.layer == waterLayer)
        {
            if (fishingState == FishingStates.THROWN)
            {
                Plop();
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        //am i in water?
        bool inWater = fishingState == FishingStates.IDLING || fishingState == FishingStates.REELING;
        if (inWater)
        {
            //when i hit boats in the water 
            if (other.gameObject.CompareTag("Boat"))
            {
                //grab boat
                other.gameObject.transform.SetParent(transform);
                //stop it's movement 
                PaperBoatMovement boatMovement =  other.GetComponent<PaperBoatMovement>();
                boatMovement.EndMovement();
            }
            //when hit the player from water
            else if (other.gameObject.CompareTag("Player"))
            {
                PickUpRod();
            }
        }
    }
}
