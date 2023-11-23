using System;
using UnityEngine;
using System.Collections;

public class ActivateText : MonoBehaviour 
{
    private TextBoxManager theTextBox;
    public TextAsset theText;

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
          
        theTextBox.EnableTextBox();
        
        if (destroyWhenFinished)
        {
            Destroy(gameObject);
        }
    }
}
