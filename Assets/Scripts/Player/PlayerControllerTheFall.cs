using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class PlayerControllerTheFall : MonoBehaviour
{
    public Rigidbody rb;
    public GameObject cameraObject;
    public bool cameraTime = false;
   
    public float rotationSpeed = 7.5f;

    //DO NOT TOUCH
    //Determines how the player is moving in the final scene, rotating wildly.
    //Needs work but I know what I'm doing with this one. 

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ | RigidbodyConstraints.FreezePositionY;
       
    }

    void Update()
    {
        transform.Rotate(Vector3.right * rotationSpeed);
        if (rotationSpeed > 1)
        {
            rotationSpeed -= (0.000003f * Time.timeSinceLevelLoad);
           
        }
        else
        {
            rotationSpeed = 1;
            //cameraTime = true;
        }
        Debug.Log(rotationSpeed);

    }
    
}

