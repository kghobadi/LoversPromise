using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class PauseGame : MonoBehaviour {

    public Canvas canvas;
    public Button Resume;
    public Button Quit;

    public Transform player;

	void Start () {
        
        canvas = canvas.GetComponent<Canvas>();

        Resume = Resume.GetComponent<Button>();
        Quit = Quit.GetComponent<Button>();
        canvas.enabled = false;
    }
	
	void Update () 
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Pause();
        }
        if (Input.GetKeyDown(KeyCode.Return))
        {
            NextScene();
        }
    }
    public void Pause ()
    {
        if (canvas.enabled == false)
        {
            canvas.enabled = true;
            Time.timeScale = 0;
        }
        else
        {
            canvas.enabled = false;
            Time.timeScale = 1;
        }
    }
    void NextScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
    public void ExitGame()
    {
        Application.Quit();
    }
    public void ResumeGame()
    {
        canvas.enabled = false;
        Time.timeScale = 1;
    }
}
