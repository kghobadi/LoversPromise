using System;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityStandardAssets.Characters.FirstPerson;

public class PauseGame : MonoBehaviour
{
    [SerializeField] private bool paused;
    private FirstPersonController fpc;
    public Canvas canvas;
    public Button Resume;
    public Button Quit;

    public Transform player;
    private string lastScene = "The Bedroom Ocean";
	void Awake ()
    {
        fpc = FindObjectOfType<FirstPersonController>();
        canvas = canvas.GetComponent<Canvas>();
        Resume = Resume.GetComponent<Button>();
        Quit = Quit.GetComponent<Button>();
    }

    private void Start()
    {
        paused = false;
        canvas.enabled = false;
    }

    void Update () 
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            //No pausing while writing a thought. 
            if (ThoughtWriter.Instance && ThoughtWriter.Instance.IsWritingThought)
            {
                return;
            }
            TogglePause();
        }
        if (Input.GetKeyDown(KeyCode.Return))
        {
            NextScene();
        }
    }
    public void TogglePause ()
    {
        paused = !paused;
        
        if (paused)
        {
            canvas.enabled = true;
            Time.timeScale = 0;
            fpc.enabled = false;
        }
        else
        {
            canvas.enabled = false;
            fpc.enabled = true;
            Time.timeScale = 1;
        }
    }
    void NextScene()
    {
        if(SceneManager.GetActiveScene().name != lastScene)
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
    public void ExitGame()
    {
        Application.Quit();
    }
    public void ResumeGame()
    {
        TogglePause();
    }
}
