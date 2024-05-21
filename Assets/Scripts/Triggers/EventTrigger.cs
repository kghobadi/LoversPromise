using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace TGS
{
    public class EventTrigger : TriggerBase
    {
        [Header("Event Settings")]
        public UnityEvent[] events;

        public override void ActivateTriggerEffect()
        {
            //invoke the events
            for (int i = 0; i < events.Length; i++)
            {
                events[i].Invoke();
            }

            base.ActivateTriggerEffect();
        }
    }
}