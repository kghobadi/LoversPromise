using System;
using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class ActivateText : MonoBehaviour 
{
    private TextBoxManager theTextBox;
    [SerializeField]
    private TextAsset theText;

    [SerializeField] 
    private ParticleSystem particles;

    public bool requiredButtonPress;
    private bool waitForPress;

    public bool destroyWhenFinished;
    
    public bool usesInteractable;

    public bool loadsNextScene;

    private bool hasActivated;
    public bool HasActivated => hasActivated;

    public TextBoxManager TextBoxManager => theTextBox;
    void Start () 
    {
        theTextBox = FindObjectOfType<TextBoxManager>();
        particles = GetComponentInChildren<ParticleSystem>();
    }
	
	void Update () 
    {
        if(waitForPress && Input.GetKeyDown(KeyCode.E))
        {
            TriggerDialogue();
        }
	}

    public void AssignText(TextAsset textAsset)
    {
        theText = textAsset;
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.name == "Wanderer")
        {
            if (!usesInteractable)
            {
                if (requiredButtonPress)
                {
                    waitForPress = true;
                    return;
                }

                TriggerDialogue();
            }
        }
    }
    
    void OnTriggerExit(Collider other)
    {
        if(other.name == "Wanderer")
        {
            waitForPress = false;
        }
    }

    public void TriggerDialogue()
    {
        if (hasActivated)
        {
            return;
        }
        
        theTextBox.ReloadScript(theText);

        //only enable if not already active
        if (!theTextBox.isActive)
        {
            theTextBox.EnableTextBox();
        }

        if (particles)
        {
            particles.Stop();
        }
        if (destroyWhenFinished)
        {
            Destroy(gameObject);
        }
        if (loadsNextScene)
        {
            LoadingScreenManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
        hasActivated = true;
    }
    
    
}
