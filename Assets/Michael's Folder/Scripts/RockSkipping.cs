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
    public UnityEvent Skip;
    public UnityEvent Sink;

    private bool sink;
    public float skipDuration;
    //objects
    public GameObject rock;

    public Collider rockCollider;
    public Rigidbody rb;


    void Start()
    {
        rock = gameObject.gameObject;
    }

    void Update()
    {
        //transform.position += (xSpeed * transform.forward * Time.deltaTime);

        Invoke("RockSink", skipDuration);

        if (sink == true && transform.position.y <= 0) //waterlevel set to 0
        {
            Sink.Invoke(); //apply splash and ripple vfx
            Debug.Log("Sink");
            rock.SetActive(false);
            Destroy(this);
        }
    }

    void RockSink()
    { sink = true; }

    void OnCollisionEnter(Collision collision)
    {

        Skip.Invoke(); //apply splash and ripple vfx
        Debug.Log("skip");
    }
}
