using System;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class TextBoxManager : NonInstantiatingSingleton<TextBoxManager> 
{
    protected override TextBoxManager GetInstance(){ return this; }
    public GameObject textBox;

    public TMP_Text theText;

    private ActivateText currentActivator;
    private List<ActivateText> dialogueQueue;
    public TextAsset textFile;
    public string[] textLines;

    public int currentLine;
    public int endAtLine;

    public FirstPersonController player;

    public bool isActive;

    public bool stopPlayerMovement;

    private bool isTyping = false;
    private bool skipLine;
    public float typeSpeed;
    [Tooltip("Check this if you want to add each line to the document rather than one line at a time.")]
    public bool showAllLinesTogether;

    public bool transitionSceneAfterNoText;
    public int currentCount;
    private ActivateText[] dialoguesTexts;

    [SerializeField] private bool disableCursor;
    private GameObject cursorObj;

    #region Properties

    public ActivateText Activator => currentActivator;

    #endregion

    private void Awake()
    {
        //get component refs
        player = FindObjectOfType<FirstPersonController>();
        cursorObj = GameObject.FindGameObjectWithTag("Cursor");
        dialoguesTexts = FindObjectsOfType<ActivateText>();
    }

    void Start()
    {
        if (textFile != null)
        {
            textLines = (textFile.text.Split('\n'));
        }

        if(endAtLine == 0)
        {
            endAtLine = textLines.Length;
        }

        if (isActive == true)
        {
            EnableTextBox();
        }
        else
        {
            DisableTextBox();
        }

        if (transitionSceneAfterNoText)
        {
            CheckSceneTransition();
        }
        
        InvokeRepeating("CheckQueue", 5f, 5f);
    }

    void Update()
    {
        if (isActive)
        {
            //theText.text = textLines[currentLine];

            //Press E or left click 
            if (Input.GetKeyDown(KeyCode.E) || Input.GetMouseButtonDown(0))
            {
                AdvanceLine();
            }
        }
    }

    /// <summary>
    /// Advances the dialogue line or skips over the typing of the letters.
    /// </summary>
    void AdvanceLine()
    {
        if (!isTyping)
        {
            currentLine += 1;

            if (currentLine >= endAtLine)
            {
                DisableTextBox();
            }
            else
            {
                StartCoroutine(TextScroll(textLines[currentLine]));
            }
        }
        else if(isTyping)
        {
            skipLine = true;
        }
    }

    private IEnumerator TextScroll (string lineOfText)
    {
        int letter = 0;
        skipLine = false;
        //reset text 
        if (!showAllLinesTogether)
        {
            theText.text = "";
        }
        //add new line
        else
        {
            if (currentLine > 0)
            {
                theText.text += "\n";
            }
        }
       
        isTyping = true;
        while (isTyping && letter < lineOfText.Length - 1)
        {
            //User hit skip line. Add remaining letters of this line and break while loop.
            if (skipLine)
            {
                for (int i = letter; i < lineOfText.Length; i++)
                {
                    theText.text += lineOfText[i];
                }

                break;
            }
            
            theText.text += lineOfText[letter];
            letter += 1;
            yield return new WaitForSeconds(typeSpeed);
        }
        if (!showAllLinesTogether)
        {
            theText.text = lineOfText;
        }
        isTyping = false;
        skipLine = false;
    }

    public void EnableTextBox()
    {
        isActive = true;
        textBox.SetActive(true);

        //player.canMove = false;
        if (cursorObj && disableCursor)
        {
            cursorObj.SetActive(false);
        }

        StartCoroutine(TextScroll(textLines[currentLine]));
    }

    public void DisableTextBox()
    {
        isActive = false;
        textBox.SetActive(false);
        
        //set additional triggers?
        if (!currentActivator.TriggerOnStart)
        {
            currentActivator.SetAdditionalTriggers();
        }
        
        //disable cursor
        if (cursorObj && disableCursor)
        {
            cursorObj.SetActive(true);
        }

        //player.canMove = true;
        if (transitionSceneAfterNoText)
        {
            CheckSceneTransition();
        }
    }

    /// <summary>
    /// Loads dialogue script from an ActivateText component & its text asset.
    /// Will Queue the dialogue for later if system is currently active.  
    /// </summary>
    /// <param name="activator"></param>
    public void LoadScript(ActivateText activator)
    {
        if(activator != null)
        {
            if (!isActive)
            {
                SetDialogueText(activator);
            }
            else
            {
                QueueDialogue(activator);
                Debug.Log("Queueing - Cannot reload text box script when active.");
            }
        }
    }

    /// <summary>
    /// Actually sets the dialogue system.
    /// </summary>
    /// <param name="activator"></param>
    void SetDialogueText(ActivateText activator)
    {
        currentActivator = activator;
        theText.text = "";
        textLines = new string[1];
        textLines = activator.DialogueAsset.text.Split('\n');
        currentLine = 0;
        endAtLine = textLines.Length;
    }

    /// <summary>
    /// Adds this activator to our dialogue queue to be played later. 
    /// </summary>
    /// <param name="activator"></param>
    void QueueDialogue(ActivateText activator)
    {
        dialogueQueue.Add(activator);
    }

    /// <summary>
    /// Called invoke repeating at start. Will play next thing in dialogue queue and empty it over time.
    /// </summary>
    void CheckQueue()
    {
        //We should only empty queue when dialogue is currently inactive. 
        if (!isActive)
        {
            if (dialogueQueue.Count > 0)
            {
                //Remove any null queue members
                while (dialogueQueue[0] == null)
                {
                    dialogueQueue.RemoveAt(0);
                }
                //Plug into the dialogue system
                SetDialogueText(dialogueQueue[0]);
                dialogueQueue.RemoveAt(0);
            }
        }
    }
    
    /// <summary>
    /// Checks if the scene transition is ready steady (all dialogues have been completed).
    /// </summary>
    void CheckSceneTransition()
    {
        currentCount = 0;
        foreach (var dialogue in dialoguesTexts)
        {
            if (!dialogue.HasActivated)
            {
                currentCount++;
            }
        }
        if (currentCount <= 0)
        {
            LoadingScreenManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
