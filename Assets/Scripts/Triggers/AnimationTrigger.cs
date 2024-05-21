using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationTrigger : TriggerBase
{
    [Header("Animation Settings")]
    [Tooltip("You can set the animator reference publicly or allow the object to grab it on itself on Awake.")]
    [SerializeField]
    private Animator animator;

    [Tooltip("Bool Parameter names we wish to set true on trigger effect (false on reset/by default).")]
    [SerializeField]
    private string[] boolParameters;
    //will be filled in on awake 
    private int[] BoolParams;

    [Tooltip("Float Parameter names we wish to set on trigger effect.")]
    [SerializeField]
    private string[] floatParameters;
    [Tooltip("Float values we wish to set on trigger effect (corresponding to the float parameters above)")]
    [SerializeField]
    private float[] floatValues;
    private float[] originalFloatValues;
    //will be filled in on awake 
    private int[] FloatParams;

    [Tooltip("Trigger Parameter names we wish to set on trigger effect.")]
    [SerializeField]
    private string[] triggerParameters;
    //will be filled in on awake 
    private int[] TriggerParams;

#if UNITY_EDITOR
    private void OnValidate()
    {
        //if we have float params and the float values array doesn't match the size.
        if (floatValues.Length != floatParameters.Length)
        {
            Array.Resize(ref floatValues, floatParameters.Length);
        }
    }
#endif

    protected override void Awake()
    {
        base.Awake();

        //null check on anim.
        if (animator == null)
        {
            animator = GetComponent<Animator>();
        }

        //set up bool params
        BoolParams = new int[boolParameters.Length];
        for (int i = 0; i < BoolParams.Length; i++)
        {
            BoolParams[i] = Animator.StringToHash(boolParameters[i]);
        }

        //set up float params
        FloatParams = new int[floatParameters.Length];
        for (int i = 0; i < FloatParams.Length; i++)
        {
            FloatParams[i] = Animator.StringToHash(floatParameters[i]);
        }

        //set up float orig values
        originalFloatValues = new float[FloatParams.Length];
        for (int i = 0; i < FloatParams.Length; i++)
        {
            originalFloatValues[i] = animator.GetFloat(FloatParams[i]);
        }

        //set up trigger params
        TriggerParams = new int[triggerParameters.Length];
        for (int i = 0; i < TriggerParams.Length; i++)
        {
            TriggerParams[i] = Animator.StringToHash(triggerParameters[i]);
        }
    }

    public override void ActivateTriggerEffect()
    {
        if (!hasTriggered)
        {
            //enable bool params
            foreach (var animParam in BoolParams)
            {
                animator.SetBool(animParam, true);
            }

            //set float params to corresponding float values 
            for (int i = 0; i < FloatParams.Length; i++)
            {
                animator.SetFloat(FloatParams[i], floatValues[i]);
            }

            //set trigger params
            foreach (var animParam in TriggerParams)
            {
                animator.SetTrigger(animParam);
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
            //disable bool params 
            foreach (var animParam in BoolParams)
            {
                animator.SetBool(animParam, false);
            }

            //reset float values
            for (int i = 0; i < FloatParams.Length; i++)
            {
                animator.SetFloat(FloatParams[i], originalFloatValues[i]);
            }
        }

        base.ManualReset();
    }
}