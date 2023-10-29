using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGM_Randomizer : MonoBehaviour
{
    public AudioClip[] BGM_Sounds;
    private AudioSource BGM_Source;


    // Start is called before the first frame update
    void Start()
    {
        BGM_Source = GetComponent<AudioSource>();

        RandomClip();
    }


    void RandomClip()
    {
        BGM_Source.clip = BGM_Sounds[Random.Range(0, BGM_Sounds.Length)];

        // Get the Length of the BGM
        float clipLength = BGM_Source.clip.length;
        Debug.Log("Audio clip length is : " + BGM_Source.clip.length);

        // Use the clips length to determine a delay before playing the function again and picking a new song
        Invoke("RandomClip", clipLength);
        BGM_Source.Play();


    }  


}
