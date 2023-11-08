using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEditor;
using UnityEngine;
using UnityEngine.Events;
using Valve.VR.InteractionSystem;

public class RockSkipping : MonoBehaviour
{
    /// <summary>
    /// Script attaches to Rock object for physics movement, skipping mechanics, and communicates for vfx
    /// </summary>
   
    #region variables
    public UnityEvent Skip;
    public UnityEvent Sink;

    //sink mechanics and timing
    private bool sink;
    public float skipDuration;
    private float skipTime = 0;

    //objects
    public GameObject rock;
    Collider skipZone; //rock sinks when left zone

    //public Collider rockCollider;
    //public Rigidbody rb;

    #endregion

    void Start()
    {
        rock = gameObject.gameObject;
    }

    void Update()
    {
        if (skipTime >= skipDuration)
        {
            Sink.Invoke();
        }
        if (sink == true && transform.position.y <= 0 && skipTime >= skipDuration) //waterlevel set to 0
        {
            Sink.Invoke(); //apply splash and ripple vfx
            Debug.Log("Sink");
        }
        skipTime += Time.deltaTime;
    }

    void OnCollisionEnter(Collision collision)
    {
        //skip Debug
        Debug.Log("skip");
    }

    private void OnTriggerExit(Collision collision)
    {
        //sinkable when left skipzone
        if (collision.gameObject == skipZone)
        sink = true;
        Debug.Log("Sinkable");
    }

}
