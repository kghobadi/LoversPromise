using System.Collections;
using System.Collections.Generic;
using System.IO;
using TGS;
using TMPro;
using UnityEngine;
using UnityEngine.Serialization;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Allows us to trigger writing thoughts from the Thought Writer with a click interaction.
/// </summary>
public class WriteThought : Interactable
{
    #region Interactions

    protected override void OnMouseOver()
    {
        if (!ThoughtWriter.Instance.IsWritingThought)
        {
            base.OnMouseOver();
        }
    }

    protected override void OnMouseDown()
    {
        base.OnMouseDown();
        if (!ThoughtWriter.Instance.IsWritingThought)
        {
            ThoughtWriter.Instance.SetThought();
        }
    }

    #endregion
}
