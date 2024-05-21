using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DistanceTrigger : TriggerBase
{
    [Tooltip("We will check the distance from this object.")]
    [SerializeField] private Transform distTransform;

    private float distFromObject;
    [SerializeField] private float distance;
    [Tooltip("True for greater, false for less than")]
    [SerializeField] private bool greaterOrLess;
    private void Start()
    {
        InvokeRepeating("CheckDistance", 0f, 1f);
    }

    void CheckDistance()
    {
        distFromObject = Vector3.Distance(distTransform.position, transform.position);

        if (greaterOrLess)
        {
            if (distFromObject > distance)
            {
                ActivateTriggerEffect();
            }
        }
        else
        {
            if (distFromObject < distance)
            {
                ActivateTriggerEffect();
            }
        }
    }
}
