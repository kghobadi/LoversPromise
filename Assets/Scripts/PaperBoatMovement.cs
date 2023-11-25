using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class PaperBoatMovement : MonoBehaviour
{
    private Rigidbody boatBody;
    [SerializeField] private Vector2 speedRange = new Vector2(1f, 5f);
    private float speed;
    private Vector3 directionVec;
    private bool moving;
    private MoveTowards mover;
    private Orbit orbit;

    public MoveTowards MoveTowards => mover;
    public Orbit Orbital => orbit;

    private void Awake()
    {
        boatBody = GetComponent<Rigidbody>();
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
    }
    
    public void RestartMovement()
    {
        RandomizeMovement();
        //disable all movements 
        //mover.MoveToWorldTransform(mover.mo);
        //orbit.ToggleOrbit(false);
    }
}
