using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class PaperBoatMovement : Interactable
{
    private ActivateText activateText;
    private Rigidbody boatBody;
    [SerializeField] private Vector2 speedRange = new Vector2(1f, 5f);
    private float speed;
    private Vector3 directionVec;
    private bool moving;
    private MoveTowards mover;
    private Orbit orbit;
    
    //create enum for Boat States to handle transformation from movement to Readable/Interactive to returning to the water 

    public MoveTowards MoveTowards => mover;
    public Orbit Orbital => orbit;

    protected override void Awake()
    {
        base.Awake();
        activateText = GetComponent<ActivateText>();
        boatBody = GetComponent<Rigidbody>();
        mover = GetComponent<MoveTowards>();
        orbit = GetComponent<Orbit>();
    }

    void Start()
    {
        RandomizeMovement();
    }
    
    public void RandomizeMovement()
    {
        speed = Random.Range(speedRange.x, speedRange.y);
        float xDir = Random.Range(-1f, 1f);
        float zDir = Random.Range(-1f, 1f);
        directionVec = new Vector3(xDir, 0f, zDir);
        moving = true;
    }
    
    #region MouseInteractions

    protected override void OnMouseOver()
    {
        if (!activateText.TextBoxManager.isActive)
        {
            base.OnMouseOver();
        }
    }

    protected override void OnMouseDown()
    {
        base.OnMouseDown();
        
        activateText.TriggerDialogue();
        
        base.OnMouseExit();
    }
    #endregion
    
    private void FixedUpdate()
    {
        if (moving)
        {
            if(boatBody.velocity.magnitude < speed)
                boatBody.AddForce(directionVec * speed);
        }
    }

    public void EndMovement()
    {
        moving = false;
        //disable all movements 
        mover.AbortMove();
        orbit.ToggleOrbit(false);
        boatBody.velocity = Vector3.zero;
    }
    
    public void RestartMovement()
    {
        RandomizeMovement();
        //disable all movements 
        //mover.MoveToWorldTransform(mover.mo);
        //orbit.ToggleOrbit(false);
    }
}
