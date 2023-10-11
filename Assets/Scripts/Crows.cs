using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Crows : MonoBehaviour
{
    
    public float rotateSpeed = 100;
    public float flySpeed = 100;
    public float moveTimer = 0;
    public Transform player;
    Vector3 point;
    
    public AudioSource caw;
    public AudioClip caw1;
    public AudioClip caw2;

    //This works much like the script for the enemies, except that it attempts to make the crows look at and move towards random positions on their own. 
    //At the interval change, the crow should make a sound. 
    //This is a detail oriented thing I will work on later, for now it's not important.

    void Start()
    {
        point = new Vector3(Random.Range(-250, 250), Random.Range(25, 75), Random.Range(-250, 250));
        transform.RotateAround(point, Vector3.up, rotateSpeed * Time.deltaTime);
        transform.LookAt(point);
    }

    void Update()
    {
        float move = Random.Range(0, 0.1f);
        moveTimer += move * Time.deltaTime;
        GameObject[] crows = GameObject.FindGameObjectsWithTag("Crows");
        for (int i = 0; i < crows.Length; i++)
        {
            if (moveTimer >= 1)
            {
                int audioDecide = Random.Range(1, 2);
                moveTimer = 0;
                if (audioDecide == 1)
                {
                    caw.PlayOneShot(caw1);
                    point = new Vector3(Random.Range(-250, 250), Random.Range(25, 75), Random.Range(-250, 250));
                    transform.RotateAround(point, Vector3.up, rotateSpeed * Time.deltaTime);
                    transform.LookAt(point);
                }
                if (audioDecide == 2)
                {
                    caw.PlayOneShot(caw2);
                    point = new Vector3(Random.Range(-500, 500), Random.Range(25, 75), Random.Range(-500, 500));
                    transform.LookAt(point);
                    transform.position += (transform.forward * flySpeed * Time.deltaTime);

                }
            }
        }
       

    }

}

