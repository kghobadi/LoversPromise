using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class playtext : MonoBehaviour {

    public GameObject quitMenu;
    public Button startText;
    public Button exitText;
    public float fadeTimer = 0.1f;
    public float fadeTotal = 1;
   
    public void ExitPress()
    {
        quitMenu.gameObject.SetActive(true);
        startText.enabled = false;
        exitText.enabled = false;
    }    
    public void NoPress()
    {
        quitMenu.gameObject.SetActive(false);
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
