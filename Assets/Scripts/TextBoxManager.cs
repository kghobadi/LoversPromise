using UnityEngine;
using System.Collections;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class TextBoxManager : MonoBehaviour {

    public GameObject textBox;

    public TMP_Text theText;

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
    

    void Start()
    {
        player = FindObjectOfType<FirstPersonController>();
        cursorObj = GameObject.FindGameObjectWithTag("Cursor");

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
    }

    void Update()
    {
        if (isActive)
        {
            //theText.text = textLines[currentLine];

            //Press E or left click 
            if (Input.GetKeyDown(KeyCode.E) || Input.GetMouseButtonDown(0))
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

    public void ReloadScript(TextAsset _text)
    {
        if(_text != null)
        {
            if (!isActive)
            {
                theText.text = "";
                textLines = new string[1];
                textLines = _text.text.Split('\n');
                currentLine = 0;
                endAtLine = textLines.Length;
            }
            else
            {
                
            }
        }
        
    }

    /// <summary>
    /// While active, we will wait to reload text script. 
    /// </summary>
    /// <param name="_text"></param>
    /// <returns></returns>
    IEnumerator WaitToReloadScript(TextAsset _text)
    {
        while (isActive)
        {
            yield return null;
        }
       
        ReloadScript(_text);
        
        EnableTextBox();
    }

    void CheckSceneTransition()
    {
        dialoguesTexts = FindObjectsOfType<ActivateText>();
        currentCount = dialoguesTexts.Length;
        if (currentCount <= 0)
        {
            LoadingScreenManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
