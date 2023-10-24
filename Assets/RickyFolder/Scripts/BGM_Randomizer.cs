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

        BGM_Source.clip = BGM_Sounds[Random.Range(0, BGM_Sounds.Length)];
        BGM_Source.Play();
    }

  
}
