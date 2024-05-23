using UnityEngine;
using UnityEngine.SceneManagement;

public class Wind : MonoBehaviour {
    public WindZone interval;
    public float windTimer = 0.1f;
    public Transform particleZone;
    public AudioSource wind;
    public Transform player;
    public GameObject dustStorm;
    public bool particles;
    bool windy = true;

    //This controls the wind in the game. Split between the menu and the maze scene. 
    //There is a timer that sets the wind to a new strength and frequency every so often. 
    //Don't need any help with this.

	void Start () {
        interval = GetComponent<WindZone>();
        interval.windPulseFrequency = 1;
        interval.windPulseMagnitude = 0.5f;

    }
	
	void Update () {
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("overworld"))
        {
            windTimer += 0.1f * Time.deltaTime;
            if (windTimer >= 0.5f && windy == true)
            {
                float number = Random.Range(-0.25f, 0.25f);
                if ((interval.windPulseFrequency + number) > 0)
                {
                    interval.windPulseFrequency += number;
                }
                if ((interval.windPulseMagnitude + number) > 0)
                {
                    interval.windPulseMagnitude += number;
                }
                if ((wind.volume + number) > 0 && (wind.volume + number) < 1)
                {
                    wind.volume += (number * 0.05f);
                }
                windTimer = 0;
            }
            if (Vector3.Distance(particleZone.transform.position, player.transform.position) > 100 && particles == true)
            {
                dustStorm.SetActive(false);
            }
            if (Vector3.Distance(particleZone.transform.position, player.transform.position) <= 100 && particles == true)
            {
                dustStorm.SetActive(true);
            }
            
        }
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("menu"))
        {
            windTimer += 0.1f * Time.deltaTime;
            if (windTimer >= 0.5f && windy == true)
            {
                float number = Random.Range(-0.25f, 0.25f);
                if ((interval.windPulseFrequency + number) > 0)
                {
                    interval.windPulseFrequency += number;
                }
                if ((interval.windPulseMagnitude + number) > 0)
                {
                    interval.windPulseMagnitude += number;
                }
                if ((wind.volume + number) > 0 && (wind.volume + number) < 1)
                {
                    wind.volume += (number * 0.05f);
                }
                windTimer = 0;
            }
        }



    }
}
