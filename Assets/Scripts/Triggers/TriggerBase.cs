using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityStandardAssets.Characters.FirstPerson;

public abstract class TriggerBase : MonoBehaviour
{
    protected Interactable interactableTrigger;
    protected bool canTrigger;
    protected FirstPersonController fpc;

    [Header("Trigger Cause Settings")]
    [Tooltip("Lets us know if this object has been triggered.")]
    [SerializeField] protected bool hasTriggered;
    [Tooltip("Lets us know accepted object tags which can trigger this.")]
    [SerializeField] protected string[] acceptedTags;
    [Tooltip("Check this and set the specific game object if there is only one very specific object which can trigger this.")]
    [SerializeField] protected bool specificObject;
    [Tooltip("Specific object this trigger is waiting for.")]
    [SerializeField] protected GameObject specificObj;

    [Header("Wait & Reset Settings")]
    [FormerlySerializedAs("waits")]
    [Tooltip("Check if trigger waits to activate its effect once it detects a relevant cause.")]
    [SerializeField] protected bool delayOnTrigger;
    [FormerlySerializedAs("waitTime")]
    [Tooltip("Amount of time to wait once OnTriggerEnter fires.")]
    [SerializeField] protected float delayTime = 5f;

    [FormerlySerializedAs("repeats")]
    [Tooltip("Check if trigger can activate repeatedly. Will wait for reset time, then reset.")]
    [SerializeField] protected bool automaticReset;
    [Tooltip("Amount of time for trigger to reset.")]
    [SerializeField] protected float resetTime = 5f;

    //Coroutines for wait/reset
    protected IEnumerator waitToTrigger;
    protected IEnumerator resetTrigger;
    protected IEnumerator waitTillGrounded;

    #region Properties

    public FirstPersonController PlayerController => fpc;

    public bool HasTriggered
    {
        get => hasTriggered;
        set => hasTriggered = value;
    }

    #endregion

    //fetch any component refs
    protected virtual void Awake()
    {
        fpc = FindObjectOfType<FirstPersonController>();
        //check for the Interactable component. 
        interactableTrigger = GetComponent<Interactable>();
    }
    
    /// <summary>
    /// Called whenever an object with a collider enters this collider (marked as trigger). 
    /// </summary>
    /// <param name="other"></param>
    protected virtual void OnTriggerEnter(Collider other)
    {
        //can it still be triggered?
        if (!hasTriggered)
        {
            //is this object the player?
            if (other.gameObject.CompareTag("Player"))
            {
                //enable interactive trigger (if it is one).
                SetTriggerActive();
            }

            //check for a specific obj to trigger this. 
            if (specificObject)
            {
                if (other.gameObject == specificObj)
                {
                    SetTrigger();
                }
            }
            else if (acceptedTags.Length > 0)
            {
                //loop through accepted tags to check if this object effects the trigger. 
                foreach (var tag in acceptedTags)
                {
                    if (other.gameObject.CompareTag(tag))
                    {
                        SetTrigger();
                    }
                }
            }
            //checks that there are no tags, no specific obj AND it is the player - go ahead and trigger it.
            else if (other.gameObject.CompareTag("Player") && interactableTrigger == null)
            {
                SetTrigger();
            }
        }
    }

    #region Interactive Trigger Methods

    /// <summary>
    /// Enables an Interactable trigger to be interacted with. 
    /// </summary>
    protected virtual void SetTriggerActive()
    {
        if (interactableTrigger != null)
        {
            canTrigger = true;
        }
    }

    /// <summary>
    /// Called whenever an object with a collider leaves the trigger. 
    /// </summary>
    /// <param name="other"></param>
    protected virtual void OnTriggerExit(Collider other)
    {
        //is this object the player?
        if (other.gameObject.CompareTag("Player"))
        {
            //disable interactive trigger (if it is one).
            SetTriggerInactive();
        }
    }

    /// <summary>
    /// Disables the interactive trigger (if it is one). 
    /// </summary>
    protected virtual void SetTriggerInactive()
    {
        if (interactableTrigger != null)
        {
            canTrigger = false;
        }
    }

    /// <summary>
    /// Called by Interact input on Trigger obj.
    /// </summary>
    public void OnInteract()
    {
        if (interactableTrigger != null && canTrigger)
        {
            SetTrigger();
        }
    }

    #endregion

    /// <summary>
    /// Sets the trigger logic in motion regardless of the cause.
    /// Has built in wait/immediate check.
    /// Sets has triggered to true regardless.
    /// </summary>
    public virtual void SetTrigger()
    {
        if (delayOnTrigger)
        {
            waitToTrigger.SetCoroutine(this, WaitToTrigger());
        }
        else
        {
            ActivateTriggerEffect();
        }

        hasTriggered = true;
        //disable interactable as well.
        if (interactableTrigger != null)
        {
            //interactableTrigger.IsInteractable = false;
        }
    }

    /// <summary>
    /// Actually causes the effect of the trigger.
    /// Should be called with a public override void
    /// Include base.ActivateTriggerEffect() at the end of your logic to get the repeat. 
    /// </summary>
    public virtual void ActivateTriggerEffect()
    {
        //for interactive triggers, they should be set inactive here.
        SetTriggerInactive();

        //call repeat if necessary 
        if (automaticReset)
        {
            resetTrigger.SetCoroutine(this, Reset());
        }
        
        Debug.LogFormat(gameObject.name + "was activated");
    }

    #region Coroutines (Wait & Reset)

    /// <summary>
    /// Waits for wait time from moment of cause to activate the trigger effect. 
    /// </summary>
    /// <returns></returns>
    protected virtual IEnumerator WaitToTrigger()
    {
        yield return new WaitForSeconds(delayTime);

        ActivateTriggerEffect();
    }

    /// <summary>
    /// Waits for reset time to reset has triggered, allowing the trigger to enact its cause/effect logic again.
    /// </summary>
    /// <returns></returns>
    private IEnumerator Reset()
    {
        yield return new WaitForSeconds(resetTime);

        ManualReset();
    }

    /// <summary>
    /// Allows you to manually reset a trigger at runtime.
    /// </summary>
    public virtual void ManualReset()
    {
        hasTriggered = false;
        //reenable interactable as well.
        if (interactableTrigger != null)
        {
            //interactableTrigger.IsInteractable = true;
        }
    }

    #endregion
}