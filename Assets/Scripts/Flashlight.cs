using UnityEngine;
using System.Collections;

public class Flashlight : MonoBehaviour {

    //public Light torchlightLightSource;
    public bool lightOn = false;
    //public float lightDrain = 0.1f;
    //public float batteryLife = 2.0f;
    //public float maxBatteryLife = 2.0f;

    //This used to be more complicated, but it kept having issues and I decided to dumb it down.
    //Will work on it in the future.
	void Start () {
        //batteryLife = maxBatteryLife;
        //torchlightLightSource = GetComponent<Light>();
        lightOn = false;

        }
	
	void Update () {
        //if (Dialoguer.GetGlobalBoolean(5) == true)
        //{
        //    lightOn = true;
        //}
        //if (lightOn == true && batteryLife >= 0)
        //{
        //    batteryLife -= Time.deltaTime * lightDrain;
        //}

        //torchlightLightSource.GetComponent<Light>().intensity = batteryLife;

        //if(batteryLife <= 0)
        //{
        //    batteryLife = 0;
        //    lightOn = false;
        //}
	}
}
