using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

/// <summary>
/// Checks that a certain group of triggers is completed.
/// Once complete, sets another trigger group as needed.
/// </summary>
public class CompletionTrigger : MonoBehaviour
{
    [SerializeField] private TriggerBase[] triggersToComplete;
    [SerializeField] private TriggerBase[] triggersToActivate;
    [SerializeField] private bool hasCompleted;

    private void Start()
    {
        InvokeRepeating("CheckAllComplete", 5f, 5f);
    }

    /// <summary>
    /// See if we completed everything
    /// </summary>
    void CheckAllComplete()
    {
        if (!hasCompleted)
        {
            //Check our completion count
            int completed = 0;
            foreach (var trigger in triggersToComplete)
            {
                if (trigger.HasTriggered)
                {
                    completed++;
                }
            }

            //Trigger all triggers to activate!
            if (completed >= triggersToComplete.Length)
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
