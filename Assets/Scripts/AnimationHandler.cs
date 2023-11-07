using UnityEngine;

public abstract class AnimationHandler : MonoBehaviour
{
    #region Serialized Properties
    //holds all the bools for this animator 
    [SerializeField] protected string[] animationBools;

    //holds the hashes for the bools above
    [SerializeField, HideInInspector] int[] animationBoolHashes;
    #endregion

    #region Serialized Properties: Cached Components
    [Header("AnimationHandler Cached Components")]
    [SerializeField] protected Animator characterAnimator;
    #endregion

    #region Properties
    /// <summary>
    /// Get or Set the speed of the Animator
    /// </summary>
    public float Speed
    {
        get
        {
            float speed = 0f;

            if (characterAnimator != null)
            {
                speed = characterAnimator.speed;
            }

            return speed;
        }

        set
        {
            if (characterAnimator != null)
            {
                characterAnimator.speed = value;
            }
            else
            {
                Debug.LogError("trying to set speed with no characterAnimator assigned!");
            }
        }
    }

    /// <summary>
    /// The Animator this Handler is using
    /// </summary>
    protected Animator Animator
    {
        get
        {
            //TODO (GC-1942) deprecate this null check; GetComponent attribute should fetch
            //  it but all existing users of AnimationHandler needs to get touched by the
            //  inspector GUI in order for it to be filled out
            if (characterAnimator == null)
            {
                characterAnimator = GetComponent<Animator>();
            }
            return characterAnimator;
        }
    }
    #endregion

    #region Member Variables
    int currentAnimatorBoolNdx;
    #endregion

    protected virtual void Awake()
    {
        if (characterAnimator)
        {
            characterAnimator = GetComponent<Animator>();
        }

        //  AnimationHandler so the hashes can get serialized
        if (animationBoolHashes == null || animationBoolHashes.Length != animationBools.Length)
        {
            RefreshHashes();
        }
    }

    // generate hashes of our animator bool parameters so we use the hash directly instead of
    //  re-hashing the same strings over and over when setting the parameter on the animator
    bool RefreshHashes()
    {
        bool hasChanged = false;
        if (animationBoolHashes == null || animationBoolHashes.Length != animationBools.Length)
        {
            animationBoolHashes = new int[animationBools.Length];
            hasChanged = true;
        }

        for (int i = 0; i < animationBools.Length; i++)
        {
            var newHash = Animator.StringToHash(animationBools[i]);

            if (animationBoolHashes[i] != newHash)
            {
                animationBoolHashes[i] = newHash;
                hasChanged = true;
            }
        }

        return hasChanged;
    }

#if UNITY_EDITOR
    protected virtual void OnValidate()
    {
        if (RefreshHashes())
        {
            UnityEditor.EditorUtility.SetDirty(this);
        }
    }
#endif

    /// <summary>
    /// Changes Animator state by index of boolean parameter
    /// </summary>
    /// <param name="ndx">Index of the boolean parameter in this AnimationHandler</param>
    public void SetAnimatorByIndexOfParameter(int ndx)
    {
        Debug.Assert(ndx <= animationBoolHashes.Length);

        // turn off all bools
        for (int i = 0; i < animationBoolHashes.Length; i++)
        {
            Animator.SetBool(animationBoolHashes[i], false);
        }

        // set the passed in bool to true and mark our current bool
        Animator.SetBool(animationBoolHashes[ndx], true);
        currentAnimatorBoolNdx = ndx;
    }

    /// <summary>
    /// Changes Animator state by boolean parameter
    /// </summary>
    /// <param name="hash">Hash of the boolean parameter</param>
    public void SetAnimatorByParameter(int hash)
    {
        var indexOfParameter = IndexOfBool(hash);
        if (indexOfParameter != -1)
        {
            SetAnimatorByIndexOfParameter(indexOfParameter);
        }
        else
        {
            Debug.LogError($"unknown parameter hash {hash}");
        }
    }

    /// <summary>
    /// Changes Animator state by boolean parameter
    /// </summary>
    /// <param name="name">Name of the boolean parameter</param>
    public void SetAnimatorByParameter(string name)
    {
        SetAnimatorByParameter(Animator.StringToHash(name));
    }

    /// <summary>
    /// Returns the index of this bool within this Handler
    /// </summary>
    /// <param name="hash">Hash of the animator bool parameter</param>
    /// <returns>Index of the animation bool within this handler; -1 otherwise</returns>
    public int IndexOfBool(int hash)
    {
        int ndx = -1;
        for (int i = 0; i < animationBoolHashes.Length; i++)
        {
            if (hash == animationBoolHashes[i])
            {
                ndx = i;
                break;
            }
        }

        return ndx;
    }

    /// <summary>
    /// Returns the index of this bool within this Handler
    /// </summary>
    /// <param name="name">Name of the animator bool parameter</param>
    /// <returns>Index of the animation bool within this handler; -1 otherwise</returns>
    public int IndexOfBool(string name)
    {
        return IndexOfBool(Animator.StringToHash(name));
    }

    /// <summary>
    /// Check if the animator has a parameter of specified name. 
    /// </summary>
    /// <param name="paramName"></param>
    /// <returns></returns>
    public bool HasParameter(string paramName)
    {
        bool found = false;

        foreach (AnimatorControllerParameter param in Animator.parameters)
        {
            if (param.name == paramName)
            {
                found = true;
                break;
            }
        }

        return found;
    }
}