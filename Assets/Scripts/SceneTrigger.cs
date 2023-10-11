using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Loads a given scene by index. 
/// </summary>
public class SceneTrigger : MonoBehaviour
{
	public int sceneIndex;
	private void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.CompareTag("Player"))
		{
			LoadingScreenManager.LoadScene(sceneIndex);
		}
	}
}
