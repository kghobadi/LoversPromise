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
    private Transform mainCam;
    private FirstPersonController fpc;
    private TextBoxManager tbm;

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

    private Vector3 throwDir;
    private float throwForce;
    [SerializeField]
    private float throwForceMultiplier = 5f;
    [SerializeField]
    private float throwForceBase = 50f;
    [Tooltip("Actual throw force")]
    [SerializeField] private float trueThrow;

    [SerializeField]
    private float chargeTimer;
    [Tooltip("Min value for time length of a Charge for throw")]
    [SerializeField] private float chargeMin;
    [Tooltip("Max value for time length of a Charge for throw")]
    [SerializeField] private float chargeMax;

    [SerializeField] private ParticleSystem splashParticles;
    [SerializeField]
    private float reelSpeed = 15f;

    private TrailRenderer hookTrail;

    protected override void Awake()
    {
        base.Awake();
        hookBody = GetComponent<Rigidbody>();
        fpc = FindObjectOfType<FirstPersonController>();
        mainCam = Camera.main.transform;
        tbm = FindObjectOfType<TextBoxManager>();
        hookTrail = GetComponent<TrailRenderer>();
    }

    void Start()
    {
        DropRod();
    }

    public override void Interact()
    {
        base.Interact();

        if (fishingState == FishingStates.INACTIVE)
        {
            PickUpRod();
        }
    }

    #region MouseInteractions

    protected override void OnMouseOver()
    {
        if (fishingState == FishingStates.INACTIVE)
        {
            base.OnMouseOver();
        }
    }

    protected override void OnMouseDown()
    {
        if (fishingState == FishingStates.INACTIVE)
        {
            base.OnMouseDown();
        }
    }

    protected override void OnMouseExit()
    {
        base.OnMouseExit();
    }

    #endregion


    #region Interaction/Physics Toggles

    void PickUpRod()
    {
        fishingState = FishingStates.ACTIVE;
        chargeTimer = 0;
        transform.SetParent(fpc.transform);
        transform.localPosition = fpc.holdingSpot;
        DisablePhysics();
        hookBody.velocity = Vector3.zero;
    }
    
    void DropRod()
    {
        fishingState = FishingStates.INACTIVE;
        transform.SetParent(null);
        hookTrail.emitting = false;
        
        EnablePhysics();
    }

    void EnablePhysics()
    {
        hookBody.useGravity = true;
        hookBody.isKinematic = false;
    }

    void DisablePhysics()
    {
        hookBody.useGravity = false;
        hookBody.isKinematic = true;
    }

    #endregion
   

    /// <summary>
    /// Detects our inputs, driving state changes. 
    /// </summary>
    private void Update()
    {
        //reload rod to held position
        if (Input.GetKeyDown(KeyCode.R))
        {
            PickUpRod();
        }
        
        //Only when dialogue is in inactive
        if (!tbm.isActive)
        {
            //Rod in use by player 
            if (fishingState == FishingStates.ACTIVE )
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
        
            //Idling or Reeling?
            if (fishingState == FishingStates.IDLING)
            {
                //press lmb - reeling
                if (Input.GetMouseButtonDown(0))
                {
                    fishingState = FishingStates.REELING;
                }
            }
        }
       
        //Reeling..
        if (fishingState == FishingStates.REELING)
        {
            //Release lmb to return to idling
            if (Input.GetMouseButtonUp(0))
            {
                fishingState = FishingStates.IDLING;
            }
        }
    }

    /// <summary>
    ///  Apply physics
    /// </summary>
    void FixedUpdate()
    {
        //Once throw, add forward force.
        if (fishingState == FishingStates.THROWN)
        {
            hookBody.AddForce(throwDir * (trueThrow * Time.fixedDeltaTime));
            //TODO need to find some way to add in Y velocity arc so it goes up rather than straight line into the water.
        }
        if (fishingState == FishingStates.IDLING)
        {
            Vector3 moveDest = new Vector3(fpc.transform.position.x, transform.position.y, fpc.transform.position.z);
            //get pulled to player slowly
            transform.position = Vector3.MoveTowards(transform.position, moveDest, Time.fixedDeltaTime);
        }
        if (fishingState == FishingStates.REELING)
        {
            Vector3 moveDest = new Vector3(fpc.transform.position.x, transform.position.y, fpc.transform.position.z);
            //get pulled to player reeling
            transform.position = Vector3.MoveTowards(transform.position, moveDest, reelSpeed * Time.fixedDeltaTime);
        }
    }

    /// <summary>
    /// When player successfully releases charged throw. 
    /// </summary>
    void ThrowLine()
    {
        if (chargeTimer > chargeMin)
        {
            chargeTimer = Mathf.Clamp(chargeTimer, 0, chargeMax);
            trueThrow = throwForceBase + chargeTimer * throwForceMultiplier;
            throwDir = fpc.transform.forward + mainCam.forward;
            hookBody.AddForce(fpc.transform.forward * trueThrow);
            hookTrail.emitting = true;

            transform.SetParent(null);
            fishingState = FishingStates.THROWN;
            EnablePhysics();
        }
        else
        {
            Debug.Log("Charge timer of " + chargeTimer + " was too low! Must be " + chargeMin + " or greater!");
        }
    }

    /// <summary>
    /// When the hook hits the water. 
    /// </summary>
    void Plop()
    {
        fishingState = FishingStates.IDLING;
        //expunge gravity and velocity
        hookBody.useGravity = false;
        hookBody.velocity = Vector3.zero;
        hookBody.angularVelocity = Vector3.zero;
        hookTrail.emitting = false;
        //do water splash particles n sound 
        splashParticles.Play();
    }
    
    /// <summary>
    /// Handles collision detection. 
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        //Once throw, look out for water. 
        if (fishingState == FishingStates.THROWN)
        {
            if (other.gameObject.CompareTag("Water"))
            {
                Plop();
            }
        }
      
        //Am i in water?
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
            else if (other.gameObject.CompareTag("Player") || other.gameObject.CompareTag("Bed"))
            {
                PickUpRod();
            }
        }
    }
}
