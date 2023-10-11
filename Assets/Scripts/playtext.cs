using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class playtext : MonoBehaviour {

    public Canvas quitMenu;
    public Button startText;
    public Button exitText;
    public float fadeTimer = 0.1f;
    public float fadeTotal = 1;


    //A script determing the appearance and capabilities of my Main Menu items.

    void Start()
    {
        quitMenu = quitMenu.GetComponent<Canvas>();
        quitMenu.enabled = false;

        startText = startText.GetComponent<Button>();
        exitText = exitText.GetComponent<Button>();

    }
   
    public void ExitPress()
    {
        quitMenu.enabled = true;
        startText.enabled = false;
        exitText.enabled = false;
    }    
    public void NoPress()
    {
        quitMenu.enabled = false;
        startText.enabled = true;
        exitText.enabled = true;
    }
    public void StartLevel()
    {
        LoadingScreenManager.LoadScene(1);
    }
    public void ExitGame()
    {
        Application.Quit();
    }
}
