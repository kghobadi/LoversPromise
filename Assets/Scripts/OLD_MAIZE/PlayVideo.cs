using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.Video;


public class PlayVideo : MonoBehaviour 
{
    public VideoPlayer movie;
    public float waitTime = 0.1f;
    public float end = 10;

	void Start () 
	{
        movie.Play();
	}
	
	void Update () 
	{
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
