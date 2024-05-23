using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class JumpTrigger : AudioHandler {
    FirstPersonController fpc;

    [Header("Jump Settings")]
    public float jumpForce;
    public AudioClip[] jumpSounds;
    [Tooltip("Check true if you want this jump trigger to only work when the Player hits it while jumping")]
    public bool triggerOnlyWhenJumping;
    
    public override void Awake ()
    {
        base.Awake();

        fpc = FindObjectOfType<FirstPersonController>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (triggerOnlyWhenJumping)
            {
                if (fpc.IsJumping)
                {
                    JumpPlayer();
                }
            }
            else
            {
                JumpPlayer();
            }
        }
    }
    
    void JumpPlayer()
    {
        //get force
        fpc.SetJump(jumpForce);
        //play sound
        PlayRandomSoundRandomPitch(jumpSounds, 1f);

        Debug.Log(gameObject.name + " bounced player");
    }
}
