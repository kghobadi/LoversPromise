using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// A generalized implementation of Vector3.MoveTowards, Lerp, & Slerp with public calls to move the object in world/local space. 
/// </summary>
public class MoveTowards : MonoBehaviour
{
    [Tooltip("Determines whether we use MoveTowards, Lerp, or Slerp. Changes the smoothness of the move.")]
    public MoveStyle moveStyle;
    public enum MoveStyle
    {
        MoveTowards,
        Lerp,
        Slerp,
    }

    [Tooltip("Move Speed Curve multiplies move speed as we reach the target destination when moving an object (x is degrees away from reaching target destination, y being 0 and 1 values that modulate move speed)")]
    [SerializeField] AnimationCurve moveSpeedMultiplierCurve;
    [Tooltip("Move Speed base value. Defaults to 5")]
    [SerializeField] float moveSpeed = 5f;
    private float currentMoveSpeed;
    private float totalDistToDest;

    [Tooltip("We are moving towards the destination in world space. Set in code.")]
    [SerializeField] private bool movingWorld;
    [Tooltip("We are moving towards the destination in local space. Set in code.")]
    [SerializeField] private bool movingLocal;
    [Tooltip("Our destination position reference.")]
    [SerializeField] private Vector3 destination;
    [Tooltip("Distance from destination at which this game object's MoveTowards operations will be considered complete.")]
    [SerializeField] float necessaryDist = 0.25f;

    [Tooltip("Allows you to check distance on a different transform.")]
    [SerializeField] Transform transformToCheck;
    
    [Tooltip("If you set this, the object will move towards it on start.")]
    [SerializeField] bool moveToObjOnStart;
    [Tooltip("If you set this, the object will move towards it on start.")]
    [SerializeField] Transform moveToThisObjectOnStart;
    [Tooltip("If you set this, the object will move towards it on start.")]
    [SerializeField] bool lookAtDest;

    /// <summary>
    /// Property for checking if the component is actively moving its object. 
    /// </summary>
    public bool IsMoving => (movingWorld || movingLocal);
    /// <summary>
    /// Accessor for necessary dist value. 
    /// </summary>
    public float NecessaryDist => necessaryDist;
    /// <summary>
    /// Accessor for destination pos. 
    /// </summary>
    public Vector3 Destination => destination;
    /// <summary>
    /// Accessor for transform we are moving. 
    /// </summary>
    public Transform TransformToCheck => transformToCheck;

    void Start()
    {
        //grab orig move speed 
        currentMoveSpeed = moveSpeed;

        //null check on transform
        if (transformToCheck == null)
        {
            transformToCheck = transform;
        }

        //move on start 
        if (moveToThisObjectOnStart != null && moveToObjOnStart)
        {
            MoveToWorldTransform(moveToThisObjectOnStart);
        }
    }

    private void OnEnable()
    {
        //For spawned boats 
        if(moveToThisObjectOnStart == null && moveToThisObjectOnStart)
        {
            //just find player 
            moveToThisObjectOnStart = FindObjectOfType<FirstPersonController>().transform;
            MoveToWorldTransform(moveToThisObjectOnStart);
        }
    }

    void Update()
    {
        //moving the object in world space
        if (movingWorld && gameObject.activeSelf)
        {
            //moving to this since start, continually update destination.
            if (moveToThisObjectOnStart != null)
            {
                destination = moveToThisObjectOnStart.position;
            }
            
            SwitchStyleWorld();
            
            //get distance left to dest
            float distanceLeft = Vector3.Distance(transformToCheck.position, destination);
            //get curve time by distance
            float curveTime = distanceLeft / totalDistToDest;

            //current move speed = orig * movespeed curve 
            currentMoveSpeed = moveSpeed * moveSpeedMultiplierCurve.Evaluate(curveTime);

            //close enough to stop the move?
            if (distanceLeft < necessaryDist)
            {
                movingWorld = false;
                //reset movespeed
                currentMoveSpeed = moveSpeed;
            }
        }

        //moving the object in local space
        if (movingLocal && gameObject.activeSelf)
        {
            SwitchStyleLocal();

            //get distance left to dest
            float distanceLeft = Vector3.Distance(transformToCheck.localPosition, destination);
            //get curve time by distance
            float curveTime = distanceLeft / totalDistToDest;

            //current move speed = orig * movespeed curve 
            currentMoveSpeed = moveSpeed * moveSpeedMultiplierCurve.Evaluate(curveTime);

            //close enough to stop the move?
            if (distanceLeft < necessaryDist)
            {
                movingLocal = false;
                //reset movespeed
                currentMoveSpeed = moveSpeed;
            }
        }
    }

    public void MoveToWorldPos(Vector3 pos) => MoveToWorldPos(pos, moveSpeed);
    public void MoveToWorldTransform(Transform transformToMoveTo) => MoveToWorldPos(transformToMoveTo.position, moveSpeed);
    /// <summary>
    /// Move the object to a new world position dest over time, at speed. 
    /// </summary>
    /// <param name="dest"></param>
    /// <param name="speed"></param>
    public void MoveToWorldPos(Vector3 dest, float speed)
    {
        destination = dest;
        currentMoveSpeed = speed;
        movingWorld = true;
        movingLocal = false;
        totalDistToDest = Vector3.Distance(transformToCheck.position, destination);

        if (lookAtDest)
        {
            transform.LookAt(destination, Vector3.up);
        }
    }

    public void MoveToLocalPos(Vector3 pos) => MoveToLocalPos(pos, moveSpeed);
    public void MoveToLocalTransform(Transform transformToMoveTo) => MoveToLocalPos(transformToMoveTo.localPosition, moveSpeed);
    /// <summary>
    /// Move the object to a new local position dest over time, at speed. 
    /// </summary>
    /// <param name="dest"></param>
    /// <param name="speed"></param>
    public void MoveToLocalPos(Vector3 dest, float speed)
    {
        destination = dest;
        currentMoveSpeed = speed;
        movingLocal = true;
        movingWorld = false;
        totalDistToDest = Vector3.Distance(transformToCheck.localPosition, destination);
    }

    /// <summary>
    /// Allows you to change the move style at runtime. 
    /// </summary>
    /// <param name="style"></param>
    public void SetMoveStyle(MoveStyle style)
    {
        moveStyle = style;
    }

    /// <summary>
    /// Called during world move. 
    /// </summary>
    void SwitchStyleWorld()
    {
        switch (moveStyle)
        {
            case MoveStyle.MoveTowards:
                transform.position = Vector3.MoveTowards(transform.position, destination, Time.deltaTime * currentMoveSpeed);
                break;
            case MoveStyle.Lerp:
                transform.position = Vector3.Lerp(transform.position, destination, Time.deltaTime * currentMoveSpeed);
                break;
            case MoveStyle.Slerp:
                transform.position = Vector3.Slerp(transform.position, destination, Time.deltaTime * currentMoveSpeed);
                break;
        }
    }

    /// <summary>
    /// Called during world move. 
    /// </summary>
    void SwitchStyleLocal()
    {
        switch (moveStyle)
        {
            case MoveStyle.MoveTowards:
                transform.localPosition = Vector3.MoveTowards(transform.localPosition, destination, Time.deltaTime * currentMoveSpeed);
                break;
            case MoveStyle.Lerp:
                transform.localPosition = Vector3.Lerp(transform.localPosition, destination, Time.deltaTime * currentMoveSpeed);
                break;
            case MoveStyle.Slerp:
                transform.localPosition = Vector3.Slerp(transform.localPosition, destination, Time.deltaTime * currentMoveSpeed);
                break;
        }
    }

    /// <summary>
    /// Stops Movement
    /// </summary>
    public void AbortMove()
    {
        movingLocal = false;
        movingWorld = false;
        currentMoveSpeed = moveSpeed;
    }

    private void OnDisable()
    {
        AbortMove();
    }
}