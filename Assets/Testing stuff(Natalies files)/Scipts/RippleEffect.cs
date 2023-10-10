using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RippleEffect : MonoBehaviour
{
    public ParticleSystem splashEffect;
    public GameObject water;

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject == water)
        {
            splashEffect.Stop();
            splashEffect.transform.position = collision.contacts[0].point;
            splashEffect.transform.position += Vector3.up * 0.1f;
            splashEffect.Play();
        }
    }
}
