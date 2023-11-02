using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RippleEffect : MonoBehaviour
{
    public ParticleSystem splashEffect;
    public ParticleSystem rippleEffect;
    public GameObject water;

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject == water)
        {
            splashEffect.Stop();
            splashEffect.transform.position = collision.contacts[0].point;
            splashEffect.transform.position += Vector3.up * 0.1f;
            splashEffect.Play();

            rippleEffect.Stop();
            rippleEffect.transform.position = collision.contacts[0].point;
            rippleEffect.transform.position += Vector3.up * 0.2f;
            rippleEffect.Play();
        }
    }
}
