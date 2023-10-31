using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.Core.Fader;
using Liminal.SDK.Core;

public class GameManager : MonoBehaviour
{
    //Game will end after a certain amount of rocks are throw AND when timer runs out 
    //Make a 3 minute timer count down 
    //Make a count of rocks throw to keep track how many rocks are left and if need to spawn more 
    //Make a rock spawner 
    //Set up colliders to track rocks 
    //Have a min amount of rocks to be thrown before game ends 
    //Once timer is out give one last rocks to player to throw 

    #region Variables 
    [SerializeField] float remainingTime;

    float minRocksThrown;
    [SerializeField] float rockCount;
    public Collider rockDespawnZone;

    public GameObject[] rocksToSpawn;
    public Transform[] rockSpawnLocations;

    #endregion

    void Update()
    {
        if(remainingTime > 0)
        {
            remainingTime -= Time.deltaTime;
        }
        else if(remainingTime < 0)
        {
            remainingTime = 0; 
        }

        if(remainingTime == 0 && minRocksThrown == 10)
        {
            //Add fade screen
            GameEnd();
        }
        else if(remainingTime == 0 && minRocksThrown != 10 || remainingTime != 0 && minRocksThrown == 10)
        {
            RockSpawner();
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject == rockDespawnZone)
        {
            rockCount++;
            //Destroy the rock that bounced 
        }
    }

    void RockSpawner()
    {
        //Spawn a rock at rock location
        //both rock and rock location are randomized 

    }

    void GameEnd()
    {
        ExperienceApp.End();
    }

}
