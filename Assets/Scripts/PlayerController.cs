//using UnityEngine;
//using System.Collections;
//using System;
//using UnityEngine.SceneManagement;

//public class PlayerController : MonoBehaviour
//{
//    public Rigidbody rb;
//    public float playerAcceleration = 500;
//    public GameObject cameraObject;

   
//    public float maxSpeed = 10;
//    public float runSpeed = 20;
//    public float runTimer = 0.1f;
//    public float runTotal = 10;
//    Vector2 horizontalMovement;
//    public float deceleration;
//    public float decelerationX;
//    public float decelerationZ;

//    public AudioSource theWanderer;
//    public AudioClip footstep;
//    Vector3 lastPosition;

//    public bool grounded = true;
//    public bool isFrozenPos = false;
//    public bool isFrozenCam = false;
    

//    //DO NOT TOUCH
//    //This is a very complicated script, beginning with turning off all things nighttime. 
//    //Player is controlled by applying forces to the rigidbody. 
//    //Lots of conditional statements to determine how the player body interacts with Dialogue in the maze.
//    //Unnecessarily lengthy because of inefficient Rigidbody Constraints.
//    //If you know what to do with this, talk to me first. It is a matter of simplifying rather than changing.

//    void Start()
//    {
//        rb = GetComponent<Rigidbody>();
//        isFrozenCam = false;
//        isFrozenPos = false;
//    }

//    void Update()
//    {
//        Debug.Log(isFrozenCam + "/Pos" + isFrozenPos);
        
//            transform.rotation = Quaternion.Euler(0, cameraObject.GetComponent<CameraController>().currentYRotation, 0);
       

//            rb.constraints = RigidbodyConstraints.None;
//            horizontalMovement = new Vector2(rb.velocity.x, rb.velocity.z);
//            if (horizontalMovement.magnitude > maxSpeed)
//            {
//                horizontalMovement = horizontalMovement.normalized;
//                horizontalMovement *= maxSpeed;
//            }

//            rb.velocity = new Vector3(horizontalMovement.x, rb.velocity.y, rb.velocity.z);
//            rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y, horizontalMovement.y);

//            if (Input.GetAxis("Horizontal") == 0 && Input.GetAxis("Vertical") == 0)
//            {
//                rb.velocity = new Vector3(Mathf.SmoothDamp(rb.velocity.x, 0, ref decelerationX, deceleration),
//                    rb.velocity.y, rb.velocity.z);
//                rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y,
//                    Mathf.SmoothDamp(rb.velocity.z, 0, ref decelerationZ, deceleration));
//            }

//            if (Input.GetKey("left shift") || Input.GetKey("right shift"))
//            {
//                maxSpeed = runSpeed;
//                if (runTotal > 0)
//                {
//                    runTotal -= runTimer * Time.deltaTime;
//                }
//                else
//                {
//                    maxSpeed = 7.5f;
//                }
//            }
//            else
//            {
//                runTotal = 10;
//                maxSpeed = 7.5f;
//            }
         
            

//    }
//    void LateUpdate()
//    {
//        rb.AddRelativeForce(Input.GetAxis("Horizontal") * playerAcceleration * Time.deltaTime, 0,
//            Input.GetAxis("Vertical") * playerAcceleration * Time.deltaTime);
//    }

//    //void OnTriggerEnter(Collider col)
//    //{
//    //    int dialogueIndex = col.gameObject.GetComponent<IndexManager>().dialogueToTrigger;
//    //    Dialoguer.StartDialogue(dialogueIndex);
//    //    col.gameObject.SetActive(false);
//    //    GameObject[] triggers = GameObject.FindGameObjectsWithTag("Trigger");
//    //    for (int i = 0; i < triggers.Length; i++)
//    //    {
//    //        if (triggers[i].GetComponent<IndexManager>().dialogueToTrigger == dialogueIndex)
//    //        {
//    //            triggers[i].SetActive(false);
//    //        }
           

//    //    }

//    //}
//}
