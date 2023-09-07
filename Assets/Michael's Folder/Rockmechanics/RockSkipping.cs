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
    /// Script attatches to Rock object for physics movement, skipping mechanics, and communicates for vfx
    /// </summary>
    public UnityEvent Skip;
    public UnityEvent Sink;

    //objects
    public GameObject rock;
    public GameObject player;

    //speed variables
    public float hMinSpeed; //minimum speed threshold
    public float hSpeed; //current horizontal speed
    public float airDrag; //speed reduction overtime

    //vertical speed
    Vector3 lastPos; //previous position
    Vector3 curPos; //current position
    public float vSpeed; //current vertical speed

    //water level
    private float waterLevel;

    Vector3 rockForward; //rock forward direction

    void Start()
    {
        rock = GetComponent<GameObject>();

    }

    void Update()
    {
        if (hSpeed > hMinSpeed /* && angle between water horizon and rock vector */)   //if speed is greater than threshold, then skip over water
        {
            Debug.Log("fast");
            //move forward relative to the object's forward
            transform.position = hSpeed * transform.forward * Time.deltaTime;

            if (rock.transform.position.y >= waterLevel) //if object reaches waterlevel, do skip
            {
                RockSkip();
            }
            hSpeed -= airDrag * Time.deltaTime; //slows down hSpeed by an amount every second
        }
        else
        {
            RockSink();
        }
    }

    public void RockSink()
    {
        //sink rock below water level, apply vfx, and destroy object
        Sink.Invoke();
        Invoke("Destroy(this.gameObject)", 2f);
    }

    public void RockSkip()
    {
        Skip.Invoke();
        //apply vfx, skip over water
    }
}
