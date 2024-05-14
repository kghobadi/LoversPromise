using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetMatValues : MonoBehaviour {
    public Material mat;
    public string[] properties;
    public float [] values;

    public bool setOnStart;

	void Awake ()
    {
        if (setOnStart)
        {
            SetValues();
        }
	}

    public void SetValues()
    {
        for(int i = 0; i < properties.Length; i++)
        {
            mat.SetFloat(properties[i], values[i]);
        }
    }
}
