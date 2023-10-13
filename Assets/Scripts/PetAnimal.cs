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

    public string pettedTrigger = "petted";
    private int randomIdle;
    [SerializeField] private int idleMax;
 
    private void Start()
    {
        animalAudio = GetComponent<AnimalSounds>();
        p_Animator = GetComponentInParent<Animator>();

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
        animalAudio.PlayRandomSoundRandomPitch(animalAudio.animalSounds, 1f);
        p_Animator.SetTrigger(pettedTrigger); 
    }
}
