using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.Core.Fader;

public class GameManager : MonoBehaviour
{
    public GameObject[] rocksToSpawn;
    public float numberOfRocksToSpawn;
    public bool isRandomized = true;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (isRandomized == true)
        {
            int randomIndex = Random.Range(0, rocksToSpawn.Length);
            
            Instantiate(rocksToSpawn[randomIndex], transform.position, Quaternion.identity);
        }
    }

    void SpawnRocks()
    {
        
    }
}
