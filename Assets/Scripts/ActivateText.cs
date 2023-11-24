using System;
using UnityEngine;
using System.Collections;

public class ActivateText : MonoBehaviour 
{
    private TextBoxManager theTextBox;
    [SerializeField]
    private TextAsset theText;

    public bool requiredButtonPress;
    private bool waitForPress;

    public bool destroyWhenFinished;
    
    void Start () 
    {
        theTextBox = FindObjectOfType<TextBoxManager>();
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
            if (requiredButtonPress)
            {
                waitForPress = true;
                return;
            }

            TriggerDialogue();
        }
    }
    
    void OnTriggerExit(Collider other)
    {
        if(other.name == "Wanderer")
        {
            waitForPress = false;
        }
    }

    void TriggerDialogue()
    {
        theTextBox.ReloadScript(theText);

        //only enable if not already active
        if (!theTextBox.isActive)
        {
            theTextBox.EnableTextBox();
        }
        
        if (destroyWhenFinished)
        {
            Destroy(gameObject);
        }
    }
}
