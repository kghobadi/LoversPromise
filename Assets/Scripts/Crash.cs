using UnityEngine;
using System.Collections;

public class Crash : MonoBehaviour
{

    public GameObject playerObject;
    public Rigidbody ship;
    public Transform mars;
    float gravity = 3.71f;
    Vector3 direction;

    //this script controls the spaceship that ejected the player in the final scene. 
    //It basically spins away from you in the direction opposite of Mars.

    void Start () {
        Vector3 direction = -(mars.transform.position);
    }
	
	void Update () {
        Vector3 direction = -(mars.transform.position);
        transform.Rotate(Vector3.up, gravity);
        ship.AddRelativeForce(direction.normalized * gravity, ForceMode.Force);
    }
}
