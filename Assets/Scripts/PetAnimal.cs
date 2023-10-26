using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

/// <summary>
/// Pets an animal!
/// </summary>
public class PetAnimal : Interactable
{
    private AnimalSounds animalAudio;
    private Animator p_Animator;

    public bool hasBeenPetted;
    public string pettedTrigger = "petted";
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

        //set random idle anim 
        randomIdle = Random.Range(0, idleMax);
        p_Animator.SetFloat("idleType", randomIdle);

        if (audioIdleSounds)
        {
            AudioIdles();
        }
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
        p_Animator.SetTrigger(pettedTrigger);

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
            if(!animalAudio.myAudioSource.isPlaying)
                animalAudio.PlayRandomSoundRandomPitch(animalAudio.animalSounds, animalAudio.myAudioSource.volume);

            //and particles 
            if (audioParticles)
            {
                audioParticles.Play();
            }
        }
    }
}
