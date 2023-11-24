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
    private bool cancelTyping = false;
    public float typeSpeed;
    [Tooltip("Check this if you want to add each line to the document rather than one line at a time.")]
    public bool showAllLinesTogether;

    public bool transitionSceneAfterNoText;
    public int currentCount;
    private ActivateText[] dialoguesTexts;

    void Start()
    {
        player = FindObjectOfType<FirstPersonController>();

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
                else if(isTyping && !cancelTyping)
                {
                    cancelTyping = true;
                }
            }
        }
    }

    private IEnumerator TextScroll (string lineOfText)
    {
        int letter = 0;
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
        cancelTyping = false;
        while (isTyping && !cancelTyping && (letter < lineOfText.Length - 1))
        {
            theText.text += lineOfText[letter];
            letter += 1;
            yield return new WaitForSeconds(typeSpeed);
        }
        if (!showAllLinesTogether)
        {
            theText.text = lineOfText;
        }
        isTyping = false;
        cancelTyping = false;
    }

    public void EnableTextBox()
    {
        isActive = true;
        textBox.SetActive(true);

        //player.canMove = false;

        StartCoroutine(TextScroll(textLines[currentLine]));
    }

    public void DisableTextBox()
    {
        isActive = false;
        textBox.SetActive(false);

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
            theText.text = "";
            textLines = new string[1];
            textLines = _text.text.Split('\n');
            currentLine = 0;
            endAtLine = textLines.Length;
        }
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
