using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ControllerMoveDemo : MonoBehaviour {

    CharacterController playerController;
    public float moveSpeed = 5f;
    public float turnSpeed = 90f;
    public float gravity = -5.0f;
    public float jumpSpeed = 10f;

    void Start () {
        playerController = GetComponent<CharacterController>(); //save reference to our component
	}
	
	void Update () {
        //1. grab input from input devices
        float horizontal = Input.GetAxis("Horizontal"); //left/right movement
        float vertical = Input.GetAxis("Vertical"); //up/down movement

        //2. plug in your values into the character controller
        playerController.Move(transform.forward * Time.deltaTime * moveSpeed * vertical); // move along forward facing
        transform.Rotate(0f, horizontal * Time.deltaTime * turnSpeed, 0f); //rotates player left or right

        if (Input.GetKey(KeyCode.Space))
        {
            transform.position += new Vector3(0f, jumpSpeed *Time.deltaTime, 0f);
        }

        //gravity
        if(playerController.isGrounded == true)
        {
            gravity = 0f;
        }
        else
        {
            gravity = -5f;
            transform.position += new Vector3(0f, gravity * Time.deltaTime, 0f);
        }
	}
}
