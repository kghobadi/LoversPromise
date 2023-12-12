using System;
using System.Collections;
using System.Collections.Generic;
using NPC;
using UnityEngine;
using Random = UnityEngine.Random;

/// <summary>
/// Pets an animal!
/// </summary>
public class PetAnimal : Interactable
{
    private AnimalSounds animalAudio;
    private Animator p_Animator;
    private Controller npcController;

    public bool hasBeenPetted;
    public string pettedTrigger = "petted";
    public string audioTrigger = "audio";
    private int randomIdle;
    [SerializeField] private int idleMax;

    [Header("Animal Audio Settings")]
    [Tooltip("Check this to make animal produce audio over time")]
    public bool audioIdleSounds;
    [Tooltip("range for audio interval")]
    public Vector2 audioIntervalRange = new Vector2(15f, 25f);
    public ParticleSystem audioParticles;
 
    private void Start()
    {
        animalAudio = GetComponent<AnimalSounds>();
        p_Animator = GetComponent<Animator>();
        npcController = GetComponent<Controller>();

        RandomizeIdle();

        if (audioIdleSounds)
        {
            AudioIdles();
        }
    }
    
    void RandomizeIdle()
    {
        //set random idle anim 
        randomIdle = Random.Range(0, idleMax);
        p_Animator.SetFloat("idleType", randomIdle);
    }

    /// <summary>
    /// Play animal sound. 
    /// </summary>
    public override void Interact()
    {
        base.Interact();

        //play sound!
        if(!animalAudio.myAudioSource.isPlaying)
            animalAudio.PlayRandomSoundRandomPitch(animalAudio.animalSounds, animalAudio.myAudioSource.volume);

        //if they are sleeping, return to Idle
        if (npcController.npcState == Controller.NPCStates.SLEEPING)
        {
            npcController.Movement.SetIdle();
        }
        //otherwise, petted anim 
        else
        {
            p_Animator.SetTrigger(pettedTrigger);
        }
        
        RandomizeIdle();

        //first time petted today?
        if (!hasBeenPetted)
        {
            hasBeenPetted = true;
            AnimalMgr.Instance.CheckPettedCount();
        }
    }
    
    /// <summary>
    /// Play audio over time 
    /// </summary>
    public void AudioIdles()
    {
        StartCoroutine(WaitToPlayAudio());
    }

    /// <summary>
    /// Actual wait to start coroutine
    /// </summary>
    IEnumerator WaitToPlayAudio()
    {
        //only loop while there are still animators in the list 
        while (audioIdleSounds)
        {
            float time =  Random.Range(audioIntervalRange.x,audioIntervalRange.y);
            yield return new WaitForSeconds(time);
                
            //play sound!
            if (!animalAudio.myAudioSource.isPlaying)
            {
                animalAudio.PlayRandomSoundRandomPitch(animalAudio.animalSounds, animalAudio.myAudioSource.volume);
                p_Animator.SetTrigger(audioTrigger);
            }

            //and particles 
            if (audioParticles)
            {
                audioParticles.Play();
            }
        }
    }
}
