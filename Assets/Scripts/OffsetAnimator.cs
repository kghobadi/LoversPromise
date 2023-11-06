using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Random = System.Random;

//this script allows you to offset the starting frame of an animation
public class OffsetAnimator : MonoBehaviour 
{
    public Animator[] animatorGroup;
    [Tooltip("Check this to randomize order that we activate animators from group")]
    public bool randomOffsetOrder;
    public Vector2 waitIntervalRange = new Vector2(0.25f, 0.5f);

    /// <summary>
    /// Can be called by editor button. 
    /// </summary>
    public void GetAllAnimatorChildren()
    {
        animatorGroup = GetComponentsInChildren<Animator>();
    }
    
    private void OnEnable()
    {
        OffsetAnimators(waitIntervalRange);
    }

    /// <summary>
    /// Offset by a specific amount 
    /// </summary>
    /// <param name="offsetTimeRange"></param>
    public void OffsetAnimators(Vector2 offsetTimeRange)
    {
        //disable animators 
        foreach (var animator in animatorGroup)
        {
            animator.enabled = false;
        }
        StartCoroutine(WaitToStartAnimator(offsetTimeRange));
    }

    /// <summary>
    /// Actual wait to start coroutine
    /// </summary>
    /// <param name="offsetTimeRange"></param>
    /// <returns></returns>
    IEnumerator WaitToStartAnimator(Vector2 offsetTimeRange)
    {
        if (randomOffsetOrder)
        {
            //get list so we can remove them as we go
            List<Animator> animatorList = animatorGroup.ToList();
            //only loop while there are still animators in the list 
            while (animatorList.Count > 0)
            {
                float time =  UnityEngine.Random.Range(offsetTimeRange.x,offsetTimeRange.y);
                yield return new WaitForSeconds(time);
                
                //get random animator from list
                int randomAnim = UnityEngine.Random.Range(0, animatorList.Count);
                Animator animator = animatorList[randomAnim];
                
                //enable it and remove it
                animator.enabled = true;
                animatorList.Remove(animator);
            }
        }
        else
        {
            //enable animators in order 
            foreach (var animator in animatorGroup)
            {
                float time =  UnityEngine.Random.Range(offsetTimeRange.x,offsetTimeRange.y);
                yield return new WaitForSeconds(time);
                animator.enabled = true;
            }
        }
    }
}