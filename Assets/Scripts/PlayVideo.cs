using UnityEngine;
using System.Collections;
using UnityEngine.UI;


public class PlayVideo : MonoBehaviour {

    public MovieTexture movie;
    public float waitTime = 0.1f;
    public float end = 10;


	void Start () {
        GetComponent<RawImage>().texture = movie as MovieTexture;
        movie.Play();
	
	}
	
	void Update () {
	    if(movie.isPlaying == false)
        {
            if(end > 0)
            {
                end -= (waitTime * Time.deltaTime);
            }
            else
            {

                Application.Quit();
            }
            
        }
	}
}
