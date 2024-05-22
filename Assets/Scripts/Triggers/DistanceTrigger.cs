using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class DistanceTrigger : MonoBehaviour
{
    [Tooltip("We will check the distance from this object.")]
    [SerializeField] private Transform distTransform;

    private float distFromObject;
    [SerializeField] private float distance;
    [Tooltip("True for greater, false for less than")]
    [SerializeField] private bool greaterOrLess;
    
    [SerializeField] private TriggerBase[] triggersToActivate;
    [SerializeField] private bool hasCompleted;
    
    private void Start()
    {
        //Use player if no transform set 
        if (distTransform == null)
        {
            distTransform = FindObjectOfType<FirstPersonController>().transform;
        }
        InvokeRepeating("CheckDistance", 1f, 1f);
    }

    void CheckDistance()
    {
        if (hasCompleted)
        {
            return;
        }
        
        distFromObject = Vector3.Distance(distTransform.position, transform.position);

        if (greaterOrLess)
        {
            if (distFromObject > distance)
            {
                SetComplete();
            }
        }
        else
        {
            if (distFromObject < distance)
            {
                SetComplete();
            }
        }
    }
    
    void SetComplete()
    {
        foreach (var trigger in triggersToActivate)
        {
            trigger.ActivateTriggerEffect();
        }
        hasCompleted = true;
    }
}
