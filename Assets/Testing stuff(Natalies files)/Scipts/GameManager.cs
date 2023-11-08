using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.Core.Fader;
using Liminal.SDK.Core;
using UnityEngine.Events;

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
    [SerializeField] private UnityEvent triggerSpawn;
    [SerializeField] float remainingTime; //Can set in inspector to however many seconds experience will be

    [SerializeField] float rockCount;
    public Collider rockDespawnZone; //Where rock will destroy itself after leaving collider 

    public GameObject[] rocksToSpawn; //Array of rock prefabs to spawn
    public Transform[] rockSpawnLocations; //Array of transforms for rocks to spawn

    #endregion

    void Update()
    {
        if (remainingTime <= 0 && rockCount >= 10)
        {
            GameEnd();
        }
        else if (remainingTime != 0 && rockCount >= 10)
        {
            RockSpawner();
        }

        if (remainingTime > 0) remainingTime -= Time.deltaTime;

    }

    public void RockCountPlus()
    {
            rockCount++;
    }

    void RockSpawner()
    {
        //Spawn a rock at rock location
        //both rock and rock location are randomized 

        GameObject rockSpawnee;
        rockSpawnee = (rocksToSpawn[Random.Range(0, rocksToSpawn.Length)]);

        Transform rockLocation;
        rockLocation = (rockSpawnLocations[Random.Range(0, rockSpawnLocations.Length)]);

        Instantiate(rockSpawnee, rockLocation.position, rockLocation.rotation);
    }

    void GameEnd()
    {
        //screen fade to black and exit experience
        var fader = ScreenFader.Instance;
        fader.FadeTo(Color.black, 2f);
        ExperienceApp.End();
    }

}
