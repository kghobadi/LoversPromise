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
        if (!isActive)
        {
            return;
        }

        //theText.text = textLines[currentLine];

        if (Input.GetKeyDown(KeyCode.E))
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

    private IEnumerator TextScroll (string lineOfText)
    {
        int letter = 0;
        theText.text = "";
        isTyping = true;
        cancelTyping = false;
        while (isTyping && !cancelTyping && (letter < lineOfText.Length - 1))
        {
            theText.text += lineOfText[letter];
            letter += 1;
            yield return new WaitForSeconds(typeSpeed);
        }
        theText.text = lineOfText;
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

    public void ReloadScript(TextAsset theText)
    {
        if(theText != null)
        {
            textLines = new string[1];
            textLines = (theText.text.Split('\n'));
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
