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

    private void Awake()
    {
        boatBody = GetComponent<Rigidbody>();
    }

    void Start()
    {
        RandomizeMovement();
    }
    
    void RandomizeMovement()
    {
        speed = Random.Range(speedRange.x, speedRange.y);
        float xDir = Random.Range(-1f, 1f);
        float zDir = Random.Range(-1f, 1f);
        directionVec = new Vector3(xDir, 0f, zDir);
    }
    
    private void FixedUpdate()
    {
        if(boatBody.velocity.magnitude < speed)
            boatBody.AddForce(directionVec * speed);
    }
}
