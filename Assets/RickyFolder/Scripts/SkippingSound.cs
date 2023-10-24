using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkippingSound : MonoBehaviour
{
    public AudioClip[] sounds;
    private AudioSource skippingSound;


    void Start()
    {
        skippingSound = GetComponent<AudioSource>();
        
    }
    



    
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name + " has entered touched the water");

        skippingSound.clip = sounds[Random.Range(0, sounds.Length)];
        skippingSound.PlayOneShot(skippingSound.clip);

    }

    private void OnTriggerStay(Collider other)
    {
        Debug.Log(other.gameObject.name + " is still touching the water");
    }

    private void OnTriggerExit(Collider other)
    {
        Debug.Log(other.gameObject.name + " has bounced off the water");
    }







    // Update is called once per frame
    void Update()
    {
        
    }
}
