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

    //objects
    public GameObject rock;
    public GameObject player;

    public Collider rockCollider;

    //speed variables
    [SerializeField] public float hMinSpeed; //minimum speed threshold
    [SerializeField] public float hSpeed; //current horizontal speed
    [SerializeField] public float airDrag; //speed reduction overtime

    //vertical speed
    Vector3 lastVPos; //previous position
    public float vSpeed; //current vSpeed
    Vector3 yDelta;
    Rigidbody rb;

    //water level
    public float waterLevel;

    void Start()
    {
        rock = GetComponent<GameObject>();
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        /* if (hSpeed > hMinSpeed && vSpeed < -10)   //if speed is greater than threshold, then skip over water
            {
                //if (transform.position.y <= waterLevel) RockSkip();
                //hspeed calculations
                hSpeed -= airDrag * Time.deltaTime; //slows down hSpeed by an amount every second

                transform.position += (hSpeed * transform.forward * Time.deltaTime);
                transform.position += (vSpeed * transform.up * Time.deltaTime);

                //vspeed calculations
                yDelta = (transform.position - lastVPos);
                lastVPos = transform.position;
                vSpeed = (transform.position.y- yDelta.y - 1f) / Time.deltaTime; 

            }
            else
            {
                RockSink();
            }
        } */



        if (rb.velocity.x < hMinSpeed)
        {
            RockSink();
        }
    }

    public void RockSink()
    {
        transform.position -= Vector3.up * -2;
        Sink.Invoke();
        //apply splash and ripple vfx
        Invoke("Destroy(this.gameObject)", 2f);

    }

    public void RockSkip()
    {
        Skip.Invoke();
        if (vSpeed < 0) vSpeed *= -1;
        //apply splash and ripple vfx
        Debug.Log("skip");
    }
}
