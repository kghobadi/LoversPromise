using UnityEngine;
using System.Collections;

/// <summary>
/// The sun script determines the sun's rotation and lets us know if its day or night. 
/// </summary>
public class Sun : MonoBehaviour 
{
	private Light sun;
    public float rotationSpeed = 10;
    public bool isNight;
    public Color day;
    public Color night;
    public float dayIntensity = 1;
    public float nightIntensity = 1;

    void Start ()
    {
	    sun = GetComponent<Light>();
    }
	
	void Update () 
	{
		//rotate dir light around x axis
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        //look at world origin
        transform.LookAt(Vector3.zero);

        //Is it night yet? 
        if (!isNight)
        {
	        if (transform.rotation.x < 0)
	        {
		        SetNight();
	        }
        }
        //Is it day yet? 
        else
        {
	        if (transform.rotation.x > 0)
	        {
		        SetDay();
	        }
        }
	}

	void SetNight()
	{
		isNight = true;
		sun.intensity = nightIntensity;
		sun.color = night;
	}

	void SetDay()
	{
		isNight = false;
		sun.intensity = dayIntensity;
		sun.color = day;
	}
}
