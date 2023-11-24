using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Spawner : MonoBehaviour 
{
    [Header("Spawner Objects & Type")]
    public ObjectPooler objectPooler;
    public GameObject[] generatedObjs;
    public GenerationType generationType;
    public enum GenerationType
    {
        RANDOM, SQUARE, 
    }

    [Header("Collision Avoidance")]
    public LayerMask collidableObjects;
    public LayerMask grounded ;
    public float heightAdjust;
    public float checkDist = 1f;

    //for RANDOM
    [Header("RANDOM")]
    public int generationAmount;
    public float generationRadius;

    //for SQUARE
    [Header("SQUARE")]
    public int gridSizeX;
    public int gridSizeY;
    public float distBetweenX, distBetweenY;

    [Header("Text Assignments")] 
    [SerializeField]
    private bool useTextAssignments;
    [SerializeField] [Tooltip("Only one instance of each can exist.")]
    private bool allUnique;
    [Tooltip("Target all possible text files that will feed into this spawners text assignments.")]
    [SerializeField]
    private List<TextAsset> allTextPossibilities = new List<TextAsset>();

    void Awake () 
    {
        //force gen amt to be count of text possibilities 
        if (useTextAssignments && allUnique)
        {
            generationAmount = allTextPossibilities.Count;
        }
        
        Random.InitState(System.DateTime.Now.Millisecond);
        generatedObjs = new GameObject[generationAmount];

        gameObject.name = generationType + " " + objectPooler.name + " Spawner";
    }

    void Start()
    {
        StartCoroutine(WaitToSpawn());
    }

    IEnumerator WaitToSpawn()
    {
        yield return new WaitForSeconds(0.1f);
        
        GenerateObjects();
    }

    //switch statement tells us which way to generate
    public void GenerateObjects()
    {
        switch (generationType)
        {
            case GenerationType.RANDOM:
                GenerateRandom();
                break;
            case GenerationType.SQUARE:
                GenerateSquare();
                break;
        }
    }
    bool CheckForSpawnCollisions(Vector3 point)
    {
        //check in radius of planting point if its too close to others
        Collider[] hitColliders = Physics.OverlapSphere(point, checkDist, collidableObjects);
        if(hitColliders.Length > 0)
        {
            //COLLIDED, RUN AGAIN
            return true;
        }
        else
        {
            //NO COLLISIONS, WE'RE CLEAR 
            return false;
        }
    }

    //generate objects in a random unit circle 
    void GenerateRandom()
    {
        for(int i = 0; i < generationAmount;i++)
        {
            Vector2 xz = Random.insideUnitCircle * generationRadius;
            
            Vector3 spawnPos = transform.position + new Vector3(xz.x, 0, xz.y);

            //this loop ends if obj is not colliding with things 
            while (CheckForSpawnCollisions(spawnPos) == true)
            {
                xz = Random.insideUnitCircle * generationRadius;

                spawnPos = transform.position + new Vector3(xz.x, 0, xz.y);
            }
            
            generatedObjs[i] = SpawnObject(spawnPos);
        }
    }

    //generate objects in a square grid pattern 
    void GenerateSquare()
    {
        //set to size of the grid we will be making 
        generatedObjs = new GameObject[(gridSizeX  + 1) * (gridSizeY  + 1)];

        for (int i = 0, y = 0; y <= gridSizeY; y++)
        {
            for (int x = 0; x <= gridSizeX; x++, i++)
            {
                Vector3 spawnPos = new Vector3(x * distBetweenX, transform.position.y, y * distBetweenY) + transform.position;

                //only create the obj if there are no spawn collisions
                if(CheckForSpawnCollisions(spawnPos) == false)
                {
                    generatedObjs[i] = SpawnObject(spawnPos);
                }
            }
        }
    }

    GameObject SpawnObject(Vector3 spawnPos)
    {
        GameObject spawnedObj = objectPooler.GrabObject();
        spawnedObj.transform.position = spawnPos;

        if (useTextAssignments)
        {
            ActivateText textScript = spawnedObj.GetComponent<ActivateText>();
            if (textScript)
            {
                TextAsset randomText = GetRandomText();
                textScript.AssignText(randomText);
            }
        }

        return spawnedObj;
    }

    /// <summary>
    /// Get a text asset from our list, then remove it. 
    /// </summary>
    /// <returns></returns>
    TextAsset GetRandomText()
    {
        TextAsset randomText = allTextPossibilities[Random.Range(0, allTextPossibilities.Count)];
        if (allUnique)
        {
            allTextPossibilities.Remove(randomText);
        }
        return randomText;
    }

    //adjust height of generated obj 
    void AdjustHeight(GameObject obj)
    {
        RaycastHit hit;

        if (Physics.Raycast(obj.transform.position, Vector3.down, out hit, Mathf.Infinity, grounded))
        {
            if (hit.transform.gameObject.CompareTag("Ground") )
            {
                obj.transform.position = new Vector3(obj.transform.position.x, hit.point.y + heightAdjust, obj.transform.position.z);
            }
            else
            {
                objectPooler.ReturnObject(obj);
            }
            Debug.DrawLine(obj.transform.position, hit.point);
        }
        
    }
}
