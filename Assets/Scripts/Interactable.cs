using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public abstract class Interactable : MonoBehaviour 
{
    protected GameObject player;
    protected GameObject cursorObj;
    protected Image cursorImg;
    protected Sprite originalCursor;
    public Sprite interactCursor;
    public float withinClickDist = 10;

    protected bool changedSprites;

    protected virtual void Awake () 
    {
        player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
        {
            player = FindObjectOfType<FirstPersonController>().gameObject;
        }
        cursorObj = GameObject.FindGameObjectWithTag("Cursor");
        cursorImg = cursorObj.GetComponent<Image>();
        originalCursor = cursorImg.sprite;
        changedSprites = false;
    }

    protected virtual void OnMouseOver()
    {
        float dist = Vector3.Distance(transform.position, player.transform.position);
        if (dist < withinClickDist && !changedSprites)
        {
            cursorImg.sprite = interactCursor;
            changedSprites = true;
        }
        Debug.Log("on mouse over");
    }

    protected virtual void OnMouseDown()
    {
        if (changedSprites)
        {
            Interact();
        }
    }

    protected virtual void OnMouseExit()
    {
        changedSprites = false;
        cursorImg.sprite = originalCursor;
    }

    public virtual void Interact()
    {
        //do whatever the hell you want
    }
}
