using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Threading;

namespace TreeManager.Threading
{
    public class TMSThreadingManager : MonoBehaviour
    {
        static List<IThreadTask> tmsThreadTasks = new List<IThreadTask>();
        static List<IThreadTask> unityThreadTasks = new List<IThreadTask>();

        static Thread thread = new System.Threading.Thread(RunTMSThread);
        static bool run;

        static void RunTMSThread()
        {
            while (run)
            {
                try
                {
                    for (int i = 0; i < tmsThreadTasks.Count; i++)
                    {
                        tmsThreadTasks[i].Invoke();
                        tmsThreadTasks.Remove(tmsThreadTasks[i]);
                    }
                }
                catch
                {
                    Debug.LogError("Issue with TMS thread, Please contact support");
                }

                Thread.Sleep(200);
            }
        }
        public static void UnityThread()
        {
            for (int i = 0; i < unityThreadTasks.Count; )
            {
                if(unityThreadTasks[i] != null)
                    unityThreadTasks[i].Invoke();

                unityThreadTasks.RemoveAt(i);

                UnityThread(); //avoid out of sync
                return;
            }
        }

        public static void StopThread()
        {
            run = false;
            thread.Abort();
        }
        public static void StartThread()
        {
            run = true;
            thread.Start();
            thread.IsBackground = true;
        }

        public static void AddTMSTask(IThreadTask task)
        {
            tmsThreadTasks.Add(task);
        }
        public static void AddUnityTask(IThreadTask task)
        {
            unityThreadTasks.Add(task);
        }
    }

    #region Tasks
    public class ThreadTask : IThreadTask
    {
        System.Action action;

        public ThreadTask(System.Action _action)
        {
            action = _action;
        }

        public void Invoke()
        {
            action();
        }
    }
    public class ThreadTask<T> : IThreadTask
    {
        System.Action<T> action;
        T data;

        public ThreadTask(System.Action<T> _action, T _data)
        {
            action = _action;
            data = _data;
        }

        public void Invoke()
        {
            action(data);
        }
    }
    public class ThreadTask<T,T1> : IThreadTask
    {
        System.Action<T, T1> action;
        T data1;
        T1 data2;

        public ThreadTask(System.Action<T,T1> _action, T _data1, T1 _data2)
        {
            action = _action;
            data1 = _data1;
            data2 = _data2;
        }

        public void Invoke()
        {
            action(data1, data2);
        }
    }
    public class ThreadTask<T, T1, T2> : IThreadTask
    {
        System.Action<T, T1, T2> action;
        T data1;
        T1 data2;
        T2 data3;

        public ThreadTask(System.Action<T, T1, T2> _action, T _data1, T1 _data2, T2 _data3)
        {
            action = _action;
            data1 = _data1;
            data2 = _data2;
            data3 = _data3;
        }

        public void Invoke()
        {
            action(data1, data2, data3);
        }
    }

    public interface IThreadTask
    {
        void Invoke();
    }
    #endregion

}
