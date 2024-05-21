using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivationTrigger : TriggerBase
{
    [Header("Activation Settings")]
    [Tooltip("objectsToDestroy are permanently destroyed when this gameobject is entered. They are not revived.")]
    [SerializeField] GameObject[] objectsToActivate;
    [Tooltip("objectsToEnable are enabled when this gameobject is entered.")]
    [SerializeField] GameObject[] objectsToDeactivate;

    public override void ActivateTriggerEffect()
    {
        if (!hasTriggered)
        {
            foreach (GameObject objectToDeactivate in objectsToDeactivate)
            {
                if (objectToDeactivate != null)
                {
                    objectToDeactivate.SetActive(false);
                }
            }

            foreach (GameObject objectToActivate in objectsToActivate)
            {
                if (objectToActivate != null)
                {
                    objectToActivate.SetActive(true);
                }
            }

            base.ActivateTriggerEffect();
        }
    }

    /// <summary>
    /// Resets the trigger
    /// </summary>
    public override void ManualReset()
    {
        if (hasTriggered)
        {
            foreach (GameObject objectToDeactivate in objectsToDeactivate)
            {
                if (objectToDeactivate != null)
                {
                    objectToDeactivate.SetActive(true);
                }
            }

            foreach (GameObject objectToActivate in objectsToActivate)
            {
                if (objectToActivate != null)
                {
                    objectToActivate.SetActive(false);
                }
            }
        }

        base.ManualReset();
    }
}