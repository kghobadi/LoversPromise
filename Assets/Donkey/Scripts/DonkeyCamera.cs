using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DonkeyCamera : MonoBehaviour
{
    public Vector3 offset;
    public Transform target;
    public float SmoothSpeed = 1.0f;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 DesiredPosition = target.position + offset;
        Vector3 SmoothedPosition = Vector3.Lerp(transform.position, DesiredPosition, SmoothSpeed * Time.deltaTime);
        transform.position = SmoothedPosition;
        transform.LookAt(target);

    }
}
