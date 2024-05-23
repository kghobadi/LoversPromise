using UnityEngine;
using System.Collections;

public class Starship : MonoBehaviour {

    public Transform mars;
    public float starSpeed = 10;

    //This script determines the movement of the 6 spaceships shown in the final scene. 
    //They look at mars and travel forward towards it.
    //Speed needs adjustment.

	void Start () {
        transform.LookAt(mars.position);
        transform.position += Vector3.forward * starSpeed;


    }
	
	void Update () {

        transform.LookAt(mars.position);
        transform.position += Vector3.forward * starSpeed * Time.deltaTime;

    }
}
