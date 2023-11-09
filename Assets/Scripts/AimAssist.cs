using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AimAssist : MonoBehaviour
{
    public float upwardMod;

    public float angleLimit, assistStrength;
    Vector3 centerForward;

    //debugging
    Vector3 randomDir, adjustedDir, finalDir;

    #region Singleton
    public static AimAssist instance;

    private void Start()
    {
        if(instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(this);
        }
    }
    #endregion

    private void Update()
    {
        //Vector3 leftLimit = Vector3.Look
        Debug.DrawRay(transform.position, transform.forward, Color.green);
        Debug.DrawRay(transform.position, randomDir, Color.yellow);
        Debug.DrawRay(transform.position, adjustedDir, Color.red);
        Debug.DrawRay(transform.position, finalDir, Color.magenta);
    }
    public Vector3 ReTarget(Vector3 originalForward)
    {
        //get current forward values
        centerForward = transform.forward;
        Vector3 reTargettedForward = originalForward;
        Quaternion direction;

        float angle = Vector3.Angle(centerForward, reTargettedForward);

        //test if within bounds
        if(angle > angleLimit)
        {
            // Apply aim assist by using a random direction within the aim cone
            Vector3 randomDirection = Quaternion.Euler(0f, Random.Range(-angleLimit, angleLimit), 0f) * centerForward;
            randomDir = randomDirection;
            // Interpolate between the original direction and the random direction based on assistStrength
            reTargettedForward = Vector3.Slerp(centerForward, randomDirection, assistStrength);
            adjustedDir = reTargettedForward;
        }

        reTargettedForward += Vector3.up * upwardMod;

        //reTargettedForward = direction.eulerAngles;// + (Vector3.up * upwardMod);
        finalDir = reTargettedForward;
        return reTargettedForward;
    }
}
