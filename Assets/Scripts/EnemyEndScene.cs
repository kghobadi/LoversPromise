using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class EnemyEndScene : MonoBehaviour
{

    public Transform Player;
    public float followSpeed = 5;
    public float chaseSpeed = 10;
    public float minDist = 3;
    public float maxDist = 3;
    float distancefrom_player;
    public float look_range = 25;
    public float agro_range = 7.5f;
    public float walkTimer = 0;

    public GameObject player;
    public AudioClip scareSound;
    AudioSource enemy;

    void Start()
    {


    }
    //This script is for the Shapes in the blackbeach scene of my game. 
    //It should make them move in a new direction every so often,
    //but they are all traveling towards the area the player should be going to.
    void Update()
    {
        distancefrom_player = Vector3.Distance(transform.position, player.transform.position);
        transform.LookAt(new Vector3(Random.Range(-190, 190), 5, Random.Range(-90, 230)));
        transform.position += Vector3.forward * followSpeed * Time.deltaTime;
        walkTimer += 0.1f * Time.deltaTime;
        if (walkTimer >= 10)
        {
            transform.LookAt(new Vector3(Random.Range(-190, 190), 5, Random.Range(-90, 230)));
            transform.position += Vector3.forward * followSpeed * Time.deltaTime;
            walkTimer = 0;
        }
        if(distancefrom_player <= agro_range)
        {
            enemy.Play();
        }
    }

}
    //void OnTriggerEnter(other : Collider)
    //{
    //    if(other.collider.tag == player.tag)
    //    {
    //        audio.PlayOneShot(scareSound);
    //    }
    //}


