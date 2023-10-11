using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {

    new AudioSource audio;

    public AudioClip footsteps_1;
    public AudioClip footsteps_2;

	void Start () {

        audio = GetComponent<AudioSource>();
	}
    

	void Update () {
        if (Input.GetKey(KeyCode.LeftArrow))
        {
            transform.Translate(-0.1f, 0, 0);
            if (!audio.isPlaying)
            {
                float random = Random.value;
                if(random < 0.5)
                {
                    audio.clip = footsteps_1;
                }
                else
                {
                    audio.clip = footsteps_2;
                }
                audio.pitch = Random.Range(0.9f, 1.1f);
                audio.Play();
            }
        } 
	    if (Input.GetKey(KeyCode.RightArrow))
        {
            transform.Translate(-0.1f, 0, 0);
            if (!audio.isPlaying)
            {
                float random = Random.value;
                if (random < 0.5)
                {
                    audio.clip = footsteps_1;
                }
                else
                {
                    audio.clip = footsteps_2;
                }
                audio.pitch = Random.Range(0.9f, 1.1f);
                audio.Play();
            }
        }
	}
}
