using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Donkey : MonoBehaviour
{
    private Animator donkey;
    CharacterController characterController;
    public float gravity = 2.0f;
    private Vector3 moveDirection = Vector3.zero;
    private bool Speed1 = true;
    private bool Speed2 = false;
    private bool Speed3 = false;
    private bool Speed4 = false;

    // Start is called before the first frame update
    void Start()
    {
        donkey = GetComponent<Animator>();
        characterController = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        characterController.Move(moveDirection * Time.deltaTime);
        moveDirection.y -= gravity * Time.deltaTime;
        if (Input.GetKeyDown(KeyCode.Keypad1))
        {
            Speed1 =! Speed1;
            Speed2 = false;
            Speed3 = false;
            Speed4 = false;
        }
        if (Input.GetKeyDown(KeyCode.Keypad2))
        {
            Speed2 = !Speed2;
            Speed1 = false;
            Speed3 = false;
            Speed4 = false;
        }
        if (Input.GetKeyDown(KeyCode.Keypad3))
        {
            Speed3 = !Speed3;
            Speed1 = false;
            Speed2 = false;
            Speed4 = false;
        }
        if (Input.GetKeyDown(KeyCode.Keypad4))
        {
            Speed4 = !Speed4;
            Speed1 = false;
            Speed2 = false;
            Speed3 = false;
        }
        if (donkey.GetCurrentAnimatorStateInfo(0).IsName("idle"))
        {
            donkey.SetBool("laydown", false);
            donkey.SetBool("walk", false);
            donkey.SetBool("trot", false);
            donkey.SetBool("run", false);
            donkey.SetBool("turnleft", false);
            donkey.SetBool("kick", false);
            donkey.SetBool("eat", false);
            donkey.SetBool("swim", false);
            donkey.SetBool("turnrighttoidle", false);
            donkey.SetBool("idletoturnright", false);
            donkey.SetBool("turnlefttoidle", false);
            donkey.SetBool("idletoturnleft", false);
        }
        if (donkey.GetCurrentAnimatorStateInfo(0).IsName("laying"))
        {
            donkey.SetBool("getup", false);
        }

        if (Input.GetKeyDown(KeyCode.W)&&(Speed1==true))
        {
            donkey.SetBool("idle", false);
            donkey.SetBool("walk", true);
        }
        if (Input.GetKeyUp(KeyCode.W) && (Speed1 == true))
        {
            donkey.SetBool("idle", true);
            donkey.SetBool("walk", false);
        }
        if (Input.GetKeyDown(KeyCode.A))
        {
            donkey.SetBool("idletoturnleft", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.A))
        {
            donkey.SetBool("turnleft", false);
            donkey.SetBool("turnlefttoidle", true);
        }
        if (Input.GetKeyDown(KeyCode.D))
        {
            donkey.SetBool("idletoturnright", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.D))
        {
            donkey.SetBool("turnright", false);
            donkey.SetBool("turnrighttoidle", true);
        }
        if (Input.GetKeyDown(KeyCode.A)&&(Speed1==true))
        {
            donkey.SetBool("walk", false);
            donkey.SetBool("walkleft", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.A) && (Speed1 == true))
        {
            donkey.SetBool("walk", true);
            donkey.SetBool("walkleft", false);
        }
        if (Input.GetKeyDown(KeyCode.D) && (Speed1 == true))
        {
            donkey.SetBool("walk", false);
            donkey.SetBool("walkright", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.D) && (Speed1 == true))
        {
            donkey.SetBool("walk", true);
            donkey.SetBool("walkright", false);
        }
        if (Input.GetKeyDown(KeyCode.W) && (Speed2 == true))
        {
            donkey.SetBool("walk", false);
            donkey.SetBool("trot", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.W) && (Speed2 == true))
        {
            donkey.SetBool("walk", true);
            donkey.SetBool("trot", false);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyDown(KeyCode.A) && (Speed2 == true))
        {
            donkey.SetBool("trot", false);
            donkey.SetBool("trotleft", true);
        }
        if (Input.GetKeyUp(KeyCode.A) && (Speed2 == true))
        {
            donkey.SetBool("trot", true);
            donkey.SetBool("trotleft", false);
        }
        if (Input.GetKeyDown(KeyCode.D) && (Speed2 == true))
        {
            donkey.SetBool("trot", false);
            donkey.SetBool("trotright", true);
        }
        if (Input.GetKeyUp(KeyCode.D) && (Speed2 == true))
        {
            donkey.SetBool("trot", true);
            donkey.SetBool("trotright", false);
        }
        if (Input.GetKeyDown(KeyCode.W) && (Speed3 == true))
        {
            donkey.SetBool("trot", false);
            donkey.SetBool("run", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.W) && (Speed3 == true))
        {
            donkey.SetBool("trot", true);
            donkey.SetBool("run", false);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyDown(KeyCode.A) && (Speed3 == true))
        {
            donkey.SetBool("run", false);
            donkey.SetBool("runleft", true);
        }
        if (Input.GetKeyUp(KeyCode.A) && (Speed3 == true))
        {
            donkey.SetBool("run", true);
            donkey.SetBool("runleft", false);
        }
        if (Input.GetKeyDown(KeyCode.D) && (Speed3 == true))
        {
            donkey.SetBool("run", false);
            donkey.SetBool("runright", true);
        }
        if (Input.GetKeyUp(KeyCode.D) && (Speed3 == true))
        {
            donkey.SetBool("run", true);
            donkey.SetBool("runright", false);
        }
        if (Input.GetKeyDown(KeyCode.W) && (Speed4 == true))
        {
            donkey.SetBool("trot", false);
            donkey.SetBool("run", false);
            donkey.SetBool("idle", false);
            donkey.SetBool("swim", true);
            donkey.SetBool("walk", false);
        }
        if (Input.GetKeyUp(KeyCode.W) && (Speed4 == true))
        {
            donkey.SetBool("walk", false);
            donkey.SetBool("trot", false);
            donkey.SetBool("run", false);
            donkey.SetBool("idle", true);
            donkey.SetBool("swim", false);
        }
        if (Input.GetKeyDown(KeyCode.A) && (Speed4 == true))
        {
            donkey.SetBool("swim", false);
            donkey.SetBool("swimleft", true);
        }
        if (Input.GetKeyUp(KeyCode.A) && (Speed4 == true))
        {
            donkey.SetBool("swim", true);
            donkey.SetBool("swimleft", false);
        }
        if (Input.GetKeyDown(KeyCode.D) && (Speed4 == true))
        {
            donkey.SetBool("swim", false);
            donkey.SetBool("swimright", true);
        }
        if (Input.GetKeyUp(KeyCode.D) && (Speed4 == true))
        {
            donkey.SetBool("swim", true);
            donkey.SetBool("swimright", false);
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            donkey.SetBool("idle", false);
            donkey.SetBool("backward", true);
        }
        if (Input.GetKeyUp(KeyCode.S))
        {
            donkey.SetBool("idle", true);
            donkey.SetBool("backward", false);
        }
        if (Input.GetKeyDown(KeyCode.Space))
        {
            donkey.SetBool("idle", false);
            donkey.SetBool("laydown", true);
            donkey.SetBool("laying", false);
            donkey.SetBool("getup", true);
        }
        if (Input.GetKeyDown(KeyCode.F))
        {
            donkey.SetBool("kick", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyDown(KeyCode.E))
        {
            donkey.SetBool("run", false);
            donkey.SetBool("jump", true);
            donkey.SetBool("idle", false);
            donkey.SetBool("runleft", false);
            donkey.SetBool("runright", false);
        }
        if (Input.GetKeyUp(KeyCode.E))
        {
            donkey.SetBool("run", true);
            donkey.SetBool("jump", false);
        }
        if (Input.GetKeyDown(KeyCode.R))
        {
            donkey.SetBool("eat", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.R))
        {
            donkey.SetBool("eat", false);
            donkey.SetBool("idle", true);
        }
        if (Input.GetKeyDown(KeyCode.V))
        {
            donkey.SetBool("bray", true);
            donkey.SetBool("idle", false);
        }
        if (Input.GetKeyUp(KeyCode.V))
        {
            donkey.SetBool("bray", false);
            donkey.SetBool("idle", true);
        }
        if (Input.GetKeyDown(KeyCode.K))
        {
            donkey.SetBool("idle", false);
            donkey.SetBool("die", true);
        }
    }
}
