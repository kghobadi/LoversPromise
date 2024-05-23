using UnityEngine;
using System.Collections;

public class Moon : MonoBehaviour {

    public float rotationSpeed = 10;
    public Transform rotation;

    //Controls rotation of the moon, but might not use it yet. 

    void Start()
    {

    }

    void Update()
    {
        transform.RotateAround(Vector3.zero, Vector3.right, rotationSpeed * Time.deltaTime);
        transform.LookAt(Vector3.zero);
        
    }
}
