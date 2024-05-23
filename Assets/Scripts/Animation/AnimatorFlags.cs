using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[Serializable]
public struct AnimatorFlag
{
    [SerializeField, Delayed]
    public string flagName;

    [SerializeField]
    public bool parameterState;

    public void SetState(bool newState)
    {
        parameterState = newState;
    }
}

public class AnimatorFlags : MonoBehaviour
{
    [SerializeField]
    protected AnimatorFlag[] animatorFlags;

    protected Dictionary<int, int> animFlagHashToIndex = new Dictionary<int, int>();

    private UnityEvent<string, bool> OnFlagUpdated;

    //TODO (GC-1941, 1942) this could use a GetComponent attribute that can retrieve from the base level
    //  or children if none are found in the base level
    protected Animator animator;

    //Accessor
    protected Animator Animator
    {
        get
        {
            if (animator == null)
            {
                animator = GetComponent<Animator>();

                if (animator == null)
                {
                    animator = GetComponentInChildren<Animator>();
                }
            }

            return animator;
        }
    }

    protected virtual void Awake()
    {
        animator = GetComponent<Animator>();

        //TODO (GC-1942) deprecate this; we need to go through and touch everything using AnimatorFlags
        //  also don't forget to move RefreshHashes into the UNITY_EDITOR block once we can deprecate
        if (animFlagHashToIndex.Count != animatorFlags.Length)
        {
            RefreshHashes();
        }
    }

    void RefreshHashes(bool onValidate = false)
    {
        animFlagHashToIndex.Clear();

        for (int i = 0; i < animatorFlags.Length; i++)
        {
            var hash = Animator.StringToHash(animatorFlags[i].flagName);

            // check if we're coming from OnValidate so as to not spam errors in the editor while we
            //  change/add flags
            if (onValidate && animFlagHashToIndex.ContainsKey(hash))
            {
                continue;
            }

            animFlagHashToIndex.Add(hash, i);
        }
    }

#if UNITY_EDITOR
    private void OnValidate()
    {
        RefreshHashes(true);
        UnityEditor.EditorUtility.SetDirty(gameObject);
    }
#endif

    public void SetFlagTrue(string flag)
    {
        SetFlag(flag, true);
    }

    public void SetFlagFalse(string flag)
    {
        SetFlag(flag, false);
    }

    public virtual void SetFlagByIndex(int flagNdx, bool state)
    {
        if (flagNdx >= 0 && flagNdx < animatorFlags.Length)
        {
            //set the flag
            ref AnimatorFlag animFlag = ref animatorFlags[flagNdx];
            animFlag.SetState(state);

            //fire event with flag name & boolean state
            OnFlagUpdated?.Invoke(animFlag.flagName, state);
        }
        else
        {
            Debug.LogError($"Invalid index for AnimatorFlag: {flagNdx}", this);
        }
    }

    public void SetFlag(int flagHash, bool state)
    {
        int ndx = FindFlagIndex(flagHash);
        if (ndx >= 0)
        {
            SetFlagByIndex(ndx, state);
        }
        else
        {
            Debug.LogError($"Couldn't find flag with hash '{flagHash}'", this);
        }
    }

    public void SetFlag(string flag, bool state)
    {
        //get the index of the correct anim flag
        int index = FindFlagIndex(flag);

        if (index >= 0)
        {
            SetFlagByIndex(index, state);
        }
        else
        {
            Debug.LogError($"Couldn't find flag with name '{flag}'", this);
        }
    }

    public virtual int FindFlagIndex(int nameHash)
    {
        int index = -1;
        if (!animFlagHashToIndex.TryGetValue(nameHash, out index))
        {
            Debug.LogError($"Couldn't find animator flag index by the name hash '{nameHash}'", this);
        }

        return index;
    }

    public int FindFlagIndex(string name)
    {
        int index = FindFlagIndex(Animator.StringToHash(name));
        if (index < 0)
        {
            Debug.LogError($"The string of the hashed name is {name}", this);
        }

        return index;
    }

    public virtual bool GetBoolStateByIndex(int flagNdx)
    {
        return animatorFlags[flagNdx].parameterState;
    }

    public bool GetBoolState(int nameHash)
    {
        bool ret = false;
        if (animFlagHashToIndex.TryGetValue(nameHash, out var ndx))
        {
            ret = GetBoolStateByIndex(ndx);
        }
        else
        {
            Debug.LogError($"Couldn't find animator flag by hashed name '{nameHash}'", this);
        }

        return ret;
    }

    public bool GetBoolState(string name)
    {
        return GetBoolState(Animator.StringToHash(name));
    }
}