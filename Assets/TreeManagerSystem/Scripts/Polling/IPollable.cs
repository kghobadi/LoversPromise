using UnityEngine;
using System.Collections;

namespace TreeManager
{
    public interface IPollable
    {
        void ResetForPoll();
        void Polled(PollObject pollObject);
    }
}