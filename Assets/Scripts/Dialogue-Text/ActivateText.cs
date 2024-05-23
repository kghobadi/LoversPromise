using System;
using UnityEngine;
using System.Collections;
using TGS;
using UnityEngine.SceneManagement;

/// <summary>
/// This component handles Dialogue setup throughout the world.
/// It triggers specific dialogue assets through our Text Box Manager.
/// You can also set up triggers for dialogue start/end. 
/// </summary>
public class ActivateText : MonoBehaviour 
{
    [SerializeField]
    private TextAsset theText;

    [Tooltip("The floating dialogue particles should be set as the only particles in children of this object.")]
    [SerializeField] 
    private ParticleSystem particles;
    
    public bool requiredButtonPress;
    private bool waitForPress;

    [SerializeField]
    private bool repeatable;
    [SerializeField]
    private bool destroyWhenFinished;
    
    [SerializeField]
    private bool usesInteractable;

    [SerializeField]
    private bool loadsNextScene;

    private bool hasActivated;

    [Header("Additional Triggers")] 
    [Tooltip("By default, we will trigger all triggers on complete. Check true to trigger on start of dialogue instead.")]
    [SerializeField]
    private bool triggerOnStart;
    [SerializeField] private EventTrigger[] eventTriggers;
    [SerializeField] private ActivationTrigger[] activationTriggers;
    [SerializeField] private AnimationTrigger[] animTriggers;
    #region Properties
    public bool HasActivated => hasActivated;
    public bool IsRepeatable => repeatable;
    public TextAsset DialogueAsset => theText;
    public bool TriggerOnStart => triggerOnStart;
    #endregion
    
    void Start () 
    {
        particles = GetComponentInChildren<ParticleSystem>();
    }
	
	void Update () 
    {
        if(waitForPress && Input.GetKeyDown(KeyCode.E))
        {
            TriggerDialogue();
        }
	}

    public void AssignText(TextAsset textAsset)
    {
        theText = textAsset;
        hasActivated = false;
    }

    public void SetRepeatable(bool state)
    {
        repeatable = state;
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.name == "Wanderer")
        {
            if (!usesInteractable)
            {
                if (requiredButtonPress)
                {
                    waitForPress = true;
                    return;
                }

                TriggerDialogue();
            }
        }
    }
    
    void OnTriggerExit(Collider other)
    {
        if(other.name == "Wanderer")
        {
            waitForPress = false;
        }
    }

    public void TriggerDialogue()
    {
        if (hasActivated && !repeatable)
        {
            return;
        }
        
        TextBoxManager.Instance.LoadScript(this);

        if (particles)
        {
            particles.Stop();
        }
        if (destroyWhenFinished)
        {
            Destroy(gameObject);
        }
        if (loadsNextScene)
        {
            LoadingScreenManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }

        if (triggerOnStart)
        {
            SetAdditionalTriggers();
        }
        
        //finally set has 
        if(!repeatable)
            hasActivated = true;
    }

    public void SetAdditionalTriggers()
    {
        //Event triggers first
        foreach (var trigger in eventTriggers)
        {
            trigger.ActivateTriggerEffect();
        }
        //Activation triggers second
        foreach (var trigger in activationTriggers)
        {
            trigger.ActivateTriggerEffect();
        }
        //Animation triggers last
        foreach (var trigger in animTriggers)
        {
            trigger.ActivateTriggerEffect();
        }
    }
}
