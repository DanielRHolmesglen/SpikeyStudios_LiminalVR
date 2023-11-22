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
    private bool timerStart; //sink condition timer
    private bool sinkStart, sunk;
    public float skipDuration; //max time in seconds
    private float skipTime = 0; //increases in value 

    //objects
    public GameObject rock;
    Collider skipZone; //rock sinks when left zone
    Rigidbody rb;
    public Transform spawnPoint;

    #endregion
    
    void Awake()
    { timerStart = false;}

    void Start()
    { 
        rock = gameObject.gameObject;
        rb = rock.GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (skipTime >= skipDuration && !sunk|| sinkStart == true && transform.position.y <= 0 && !sunk) //waterlevel set to 0
        {
            Sink.Invoke(); //apply splash and ripple vfx
            Debug.Log("Sink");
            sunk = true;
        }
        if (timerStart == true) skipTime += Time.deltaTime;
    }

    public void ThrowTimerStart()
    { timerStart = true; }

    void OnCollisionEnter(Collision collision) //skip debug
    {Debug.Log("skip"); }

    private void OnTriggerExit(Collider other) //sinkable when left skipzone
    {
        if (other == skipZone)
        sinkStart = true;
        Debug.Log("Sinkable");

    }

     public void Spawn()
    {
        rb.useGravity = false;
        rb.velocity = Vector3.zero;
        transform.position = spawnPoint.position;
        transform.rotation = Quaternion.identity;
        rb.constraints = RigidbodyConstraints.FreezeAll;

        sinkStart = false;
        sunk = false;
        timerStart = false;

        
        Debug.Log("Spawned in");
    }

}
