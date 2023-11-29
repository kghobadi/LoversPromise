using System.Collections;
using System.Collections.Generic;
using System.IO;
using TMPro;
using UnityEngine;
using UnityEngine.Serialization;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Controls input of text for Writing thoughts or adendums to paper boat notes.
/// </summary>
public class WriteThought : Interactable
{
    private FirstPersonController fpc;
    private TextBoxManager tbm;
    [SerializeField]
    private TMP_InputField enterThought;
    [SerializeField]
    private bool isWritingThought;
    private string fileName;
    private string standardThoughtName = "thought";
    private string txtFileEnding = ".txt";

    protected override void Awake()
    {
        fpc = FindObjectOfType<FirstPersonController>();
        tbm = FindObjectOfType<TextBoxManager>();
        base.Awake();
    }

    #region Interactions

    protected override void OnMouseOver()
    {
        if (!isWritingThought)
        {
            base.OnMouseOver();
        }
    }

    protected override void OnMouseDown()
    {
        base.OnMouseDown();
        
        tbm.textBox.SetActive(true);
        enterThought.gameObject.SetActive(true);
        if (!enterThought.isFocused)
            enterThought.ActivateInputField();

        isWritingThought = true;
        fpc.SetLock(true);
        base.OnMouseExit();
    }

    #endregion

    // Update is called once per frame
    void Update()
    {
        //called after you have note open and thought writing 
        if (isWritingThought)
        {
            if (!enterThought.isFocused)
                enterThought.ActivateInputField();

            if (Input.GetKeyDown(KeyCode.Return))
            {
                WriteStringToFile();
            }
        }
    }
    
    public void WriteStringToFile()
    {
        string path = Application.persistentDataPath + fileName;
        string fullWrittenMessage = enterThought.text;
        string[] allLines = fullWrittenMessage.Split('\n');
        //Write some text to the test.txt file
        StreamWriter writer = new StreamWriter(path, true);
        foreach (var line in allLines)
        {
            writer.WriteLine(line);
        }
        writer.Close();
        StreamReader reader = new StreamReader(path);
        //Print the text from the file
        Debug.Log(reader.ReadToEnd());
        reader.Close();
        
        //disable writing stuff
        enterThought.gameObject.SetActive(false);
        tbm.textBox.SetActive(false);
        
        isWritingThought = false;
        fpc.SetLock(false);
    }
    
    public void ReadString(string file)
    {
        //get read path
        string path = Application.persistentDataPath + file;
        //Read the text from directly from the test.txt file
        StreamReader reader = new StreamReader(path);
        Debug.Log(reader.ReadToEnd());
        reader.Close();
    }
    
    /*void SaveThoughtAsTextFile() OLD METHOD
 {
     fileName = enterThought.text + txtFileEnding;
     textAssetSavePath = Application.dataPath + "/../Text/" + fileName;

     //ensures we don't already have a file there
     while (File.Exists(textAssetSavePath))
     {
         textAssetSavePath = textAssetSavePath.Remove(textAssetSavePath.Length - 4);
         textAssetSavePath += txtFileEnding;
         fileName = fileName.Remove(fileName.Length - 4);
         fileName += txtFileEnding;
     }

     //textAssetSavePath = Application.dataPath + "/../savedClips/" + fileName;

     File.Move(Application.dataPath + "/../Text/test.txt", textAssetSavePath);//make it add copy if it already exists!
     clipRecordProgress.rectTransform.sizeDelta = new Vector2(0, 10);
 }*/
}
