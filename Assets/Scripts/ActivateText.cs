using UnityEngine;
using System.Collections;

public class ActivateText : MonoBehaviour {

    public TextAsset theText;

    public int startLine;
    public int endLine;

    public TextBoxManager theTextBox;

    public bool requiredButtonPress;
    private bool waitForPress;

    public bool destroyWhenFinished;
    public bool continued;
    public GameObject newText;
    public GameObject newChar;
    public GameObject oldChar;

    void Start () {
        theTextBox = FindObjectOfType<TextBoxManager>();
        

    }
	
	void Update () {
        if(waitForPress && Input.GetKeyDown(KeyCode.E))
        {
            theTextBox.ReloadScript(theText);
            theTextBox.currentLine = startLine;
            theTextBox.endAtLine = endLine;
            theTextBox.EnableTextBox();
          
            if (destroyWhenFinished == true)
            {
                Destroy(gameObject);
                //if (continued == true)
                //{
                //    newText.SetActive(true);
                //    newChar.SetActive(true);
                //    oldChar.SetActive(false);
                //}

            }
        }
	
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.name == "Wanderer")
        {
           
            if (requiredButtonPress == true)
            {
                waitForPress = true;
                return;
            }

            theTextBox.ReloadScript(theText);
            theTextBox.currentLine = startLine;
            theTextBox.endAtLine = endLine;
            theTextBox.EnableTextBox();
            //if (continued == true)
            //{
            //    newText.SetActive(true);
            //    newChar.SetActive(true);
            //    oldChar.SetActive(false);
            //}
            if (destroyWhenFinished == true)
            {
                Destroy(gameObject);

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
}
