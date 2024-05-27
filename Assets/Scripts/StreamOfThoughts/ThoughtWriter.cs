using System.Collections;
using System.Collections.Generic;
using System.IO;
using TGS;
using TMPro;
using UnityEngine;
using UnityEngine.Serialization;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Controls input of text for Writing thoughts or adendums to paper boat notes.
/// </summary>
public class ThoughtWriter : NonInstantiatingSingleton<ThoughtWriter> 
{
    protected override ThoughtWriter GetInstance(){ return this; }
    private FirstPersonController fpc;
    [SerializeField]
    private TMP_InputField enterThought;
    [SerializeField]
    private bool isWritingThought;

    [SerializeField] private EventTrigger thoughtFinishedTrigger;
    [SerializeField] private GameObject cursorCanvas;
    
    //File pathing
    private string textFolder = "/Text/The Bedroom Ocean/";
    private string filePath; //how to determine this?
    private string lastPath;
    
    private string standardThoughtName = "thought";
    private string txtFileEnding = ".txt";

    public bool IsWritingThought => isWritingThought;

    protected override void Awake()
    {
        fpc = FindObjectOfType<FirstPersonController>();
        base.Awake();
    }

    /// <summary>
    /// Called by Write thought interactions (on paper).
    /// </summary>
    public void SetThought()
    {
        TextBoxManager.Instance.textBox.SetActive(true);
        enterThought.gameObject.SetActive(true);
        cursorCanvas.gameObject.SetActive(false);
        
        //read random file from the text folder
        string randomFile = GetRandomFile(Application.dataPath + textFolder);
        ReadStringFile(randomFile);
        
        if (!enterThought.isFocused)
            enterThought.ActivateInputField();

        isWritingThought = true;
        fpc.enabled = false;
    }

    /// <summary>
    /// Get random file from a folder. 
    /// </summary>
    /// <param name="folder"></param>
    /// <returns></returns>
    string GetRandomFile(string folder)
    {
        //Get all files from our path folder
        string[] filePaths = Directory.GetFiles(folder);
        List<string> actualTextFiles = new List<string>();

        //remove meta files from actionable list
        foreach (var path in filePaths)
        {
            if (!path.Contains(".meta"))
            {
                actualTextFiles.Add(path);
            }
        }

        //make sure we have a file name 
        string file = "";
        while (string.IsNullOrEmpty(file))
        {
            int randomFile = Random.Range(0, actualTextFiles.Count);
            file = actualTextFiles[randomFile];
        }

        return file;
    }
    
    /// <summary>
    /// Read string file at path within data path.
    /// </summary>
    /// <param name="file"></param>
    public void ReadStringFile(string file)
    {
        //get read path
        filePath = file;
        //Read the text from directly from the test.txt file
        StreamReader reader = new StreamReader(filePath);

        enterThought.text = reader.ReadToEnd();
        reader.Close();
    }

    void Update()
    {
        //called after you have note open and thought writing 
        if (isWritingThought)
        {
            if (!enterThought.isFocused)
                enterThought.ActivateInputField();
        }
    }
    
    /// <summary>
    /// This is called after input on paper. 
    /// </summary>
    public void WriteStringToFile()
    {
        string fullWrittenMessage = enterThought.text;
        string[] allLines = fullWrittenMessage.Split('\n');
        //Write some text to the test.txt file
        StreamWriter writer = new StreamWriter(filePath, false);
        foreach (var line in allLines)
        {
            writer.WriteLine(line);
        }
        writer.Close();
        StreamReader reader = new StreamReader(filePath);
        //Print the text from the file
        Debug.Log(reader.ReadToEnd());
        reader.Close();
        
        //disable writing stuff
        enterThought.gameObject.SetActive(false);
        TextBoxManager.Instance.textBox.SetActive(false);
        cursorCanvas.gameObject.SetActive(true);
        
        isWritingThought = false;
        fpc.enabled = true;
        
        thoughtFinishedTrigger.ActivateTriggerEffect();
    }
}
