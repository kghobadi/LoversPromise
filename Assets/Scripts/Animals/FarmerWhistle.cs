using System.Collections;
using System.Collections.Generic;
using NPC;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Controls farmer whistle behavior for contacting animal pack leaders. 
/// </summary>
public class FarmerWhistle : AudioHandler
{
    [SerializeField] private AudioClip[] whistleSounds;
    public UnityEvent OnWhistle;

    [SerializeField] private float whistleRange = 50f;
    [SerializeField] private LayerMask affectedLayers;
    
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            Whistle();
        }
    }

    void Whistle()
    {
        //Are we not already whistling?
        if (!myAudioSource.isPlaying)
        {  
            //play sound
            PlayRandomSoundRandomPitch(whistleSounds, 1f);
        
            //fire event
            OnWhistle.Invoke();
            
            //grab all colliders in box area of whistle range
            //Use the GameObject's centre, half the size (as a radius) and rotation. This creates an invisible box around your GameObject.
            Collider[] hitColliders = Physics.OverlapBox(gameObject.transform.position, transform.localScale * whistleRange, Quaternion.identity, affectedLayers);
            int i = 0;
            //Check when there is a new collider coming into contact with the box
            while (i < hitColliders.Length)
            {
                //check if they are Animals 
                Movement npcAnimal = hitColliders[i].GetComponent<Movement>();
                // if so, activate their whistle behavior. 
                if (npcAnimal)
                {
                    npcAnimal.OnWhistle();
                }
                //Output all of the collider names
                Debug.Log("Hit : " + hitColliders[i].name + i);
                //Increase the number of Colliders in the array
                i++;
            }
        }
    }
}
