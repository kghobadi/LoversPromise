using UnityEngine;
using System.Collections;

public class Footsteps : MonoBehaviour {

    public Rigidbody player;
    public AudioSource theWanderer;
    public AudioClip footstep;

    //Simply detects movement of the player in order to play the footstep sound.
    //Footstep pitch needs to better match the player's movement.
    //Needs a conditional statement to determine if the player is running.

	void Start () {

        player = GetComponent<Rigidbody>();
	}
	
	void Update () {
        if (player.velocity.magnitude > 0.5f && player.velocity.magnitude < 2f && theWanderer.isPlaying == false)
        {
            theWanderer.pitch = Random.Range(0.6f, 0.7f);
            theWanderer.PlayOneShot(footstep, 0.15f);
        }
        if (player.velocity.magnitude > 2f && player.velocity.magnitude < 5f && theWanderer.isPlaying == false)
        {
            theWanderer.pitch = Random.Range(0.7f, 8f);
            theWanderer.PlayOneShot(footstep, 0.14f);
        }
        if (player.velocity.magnitude > 5f && player.velocity.magnitude < 7.5f && theWanderer.isPlaying == false)
        {
            theWanderer.pitch = Random.Range(8f, 1f);
            theWanderer.PlayOneShot(footstep, 0.13f);
        }
        if (player.velocity.magnitude > 7.5f && player.velocity.magnitude < 10 && theWanderer.isPlaying == false)
        {
            theWanderer.pitch = Random.Range(1.1f, 1.2f);
            theWanderer.PlayOneShot(footstep, 0.12f);
        }
        if (player.velocity.magnitude > 10 && player.velocity.magnitude < 12 && theWanderer.isPlaying == false)
        {
            theWanderer.pitch = Random.Range(1.3f, 1.4f);
            theWanderer.PlayOneShot(footstep, 0.11f);
        }
    }
}
