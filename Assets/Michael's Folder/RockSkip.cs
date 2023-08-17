using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEditor;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class RockSkip : MonoBehaviour
{
    /// <summary>
    /// rock skip mechanic
    /// rock continues to skip when above horizontal speed threshold 
    /// </summary>

    //objects
    public GameObject rock;
    public GameObject player;

    //speed variables
    public float hMinSpeed; //minimum speed threshold
    public float hSpeed; //current horizontal speed
    public float airDrag; //speed reduction overtime

    Vector3 rockForward; //rock forward direction

    void Start()
    {
        rock = GetComponent<GameObject>();

    }

    void Update()
    {
        // if speed is greater than threshold, then skip over water
        if (hSpeed > hMinSpeed)
        {
            //move forward relative to the object's forward
            hSpeed -= airDrag * Time.deltaTime;
        }
        else
        {
            RockSink();
        }
    }

    public void RockSink()
    {
        //sink rock below water level, apply vfx, and destroy object
        Invoke("Destroy(this.gameObject)",2f);
    }

    public void RockSkip()
    {
        //apply vfx, skip over water
    }
}
