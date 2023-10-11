using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class EnemyMovement : MonoBehaviour {

    public Transform Player;
    public float followSpeed = 5;
    public float chaseSpeed = 10;
    public float minDist = 3;
    public float maxDist = 3;
    float distancefrom_player;
    public float look_range = 25;
    public float agro_range = 7.5f;

    public GameObject player;
    public Canvas LoadScreen;
    public AudioSource enemy;
    public AudioClip enemyInRange;
    public AudioClip scareSound;
    void Start()
    {
       

    }

    //This script is what controls the enemies that appear. 
    //They are linked to both the player script and the sun script.
    //The multiple ranges indicate the speed at which they travel towards the player.
    void Update()
    {
        distancefrom_player = Vector3.Distance(Player.position, transform.position);

        if (distancefrom_player <= look_range)
        {
            transform.LookAt(Player);
            if (enemy.isPlaying == false)
            {
                enemy.PlayOneShot(enemyInRange);
            }
            if (distancefrom_player <= agro_range)
            {
                if (distancefrom_player >= minDist)
                {
                    enemy.PlayOneShot(scareSound);
                    transform.position += transform.forward * chaseSpeed * Time.deltaTime;
                    LoadingScreenManager.LoadScene(2);
                    
                }
            }
            else
            {
                transform.position += transform.forward * followSpeed * Time.deltaTime;
            }
        }
        
    }
}

