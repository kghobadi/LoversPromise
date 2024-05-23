using UnityEngine;

/// <summary>
/// Inherit from this base class to create a singleton. This does not instantiate automatically.
/// GetInstance() should just be a single line function that's "return this;"
/// e.g. public class MyClassName : NonInstantiatingSingleton<MyClassName> { protected override MyClassName GetInstance() => this; }
/// </summary>
public abstract class NonInstantiatingSingleton<T> : MonoBehaviour where T : MonoBehaviour
{
    // Check to see if we're about to be destroyed.
    private static bool m_ShuttingDown = false;
    private static object m_Lock = new object();
    protected static T m_Instance;
#if UNITY_EDITOR
    private static bool m_IsExitingPlayMode = false;
#endif

    /// <summary>
    /// Access singleton instance through this propriety.
    /// </summary>
    public static T Instance
    {
        get
        {
            if (m_ShuttingDown)
            {
#if UNITY_EDITOR
                if (!m_IsExitingPlayMode)
#endif
                Debug.LogWarning("[Singleton] Instance '" + typeof(T) +
                    "' already destroyed. Returning null.");
                return null;
            }

            lock (m_Lock)
            {
                return m_Instance;
            }
        }
    }

    /// <summary>
    /// Returns true if the instance is active
    /// </summary>
    public static bool IsActive
    {
        get
        {
            return !m_ShuttingDown && m_Instance != null;
        }
    }

    protected virtual void Awake()
    {
        if (m_Instance == null)
        {
            // reset shutting down on awake.
            if (m_ShuttingDown)
            {
                m_ShuttingDown = false;
#if UNITY_EDITOR
                m_IsExitingPlayMode = false;
#endif
            }

            // get the instance. 
            lock (m_Lock)
            {
                m_Instance = GetInstance();
            }

#if UNITY_EDITOR
            UnityEditor.EditorApplication.playModeStateChanged += CheckIfExitingPlayMode;
#endif
        }
        else
        {
            throw new System.Exception($"{nameof(m_Instance)} is not null!");
        }
    }

    protected abstract T GetInstance();

    private void OnApplicationQuit()
    {
        OnDestroy();
    }


    protected virtual void OnDestroy()
    {
        m_ShuttingDown = true;
#if UNITY_EDITOR
        UnityEditor.EditorApplication.playModeStateChanged -= CheckIfExitingPlayMode;
#endif
    }

#if UNITY_EDITOR
    private static void CheckIfExitingPlayMode(UnityEditor.PlayModeStateChange stateChange)
    {
        m_IsExitingPlayMode = stateChange == UnityEditor.PlayModeStateChange.ExitingPlayMode;
    }
#endif
}