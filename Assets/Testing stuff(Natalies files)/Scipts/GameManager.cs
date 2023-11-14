using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.Core.Fader;
using Liminal.SDK.Core;
using UnityEngine.Events;

public class GameManager : MonoBehaviour
{

    //Set up colliders to track rocks 
    //Once timer is out give one last rocks to player to throw 

    #region Variables 
    [SerializeField] private UnityEvent triggerSpawn;
    [SerializeField] float remainingTime; //3 minute timer expected

    [SerializeField] float rockCount;
    public Collider rockDespawnZone; //Where rock will destroy itself after leaving collider 

    public GameObject[] rocks; //Rock prefabs
    public Transform[] spawnPos; //Rock spawn locations

    /* rock random instantiation
    MeshRenderer[] rockMeshes;
    MeshRenderer rockMesh; //spawnRock mesh selection
    MeshFilter[] rockFilters;
    MeshFilter rockFilter; //spawnRock meshfilter selection */
    #endregion

    void Update()
    {
        if (remainingTime <= 0 && rockCount >= 10)
        {
            GameEnd();
        }

        if (remainingTime > 0) remainingTime -= Time.deltaTime;
    }

    public void RockCountPlus()
    {
            rockCount++;
    }

    void GameEnd()
    {
        //screen fade to black and exit experience
        var fader = ScreenFader.Instance;
        fader.FadeTo(Color.black, 2f);
        ExperienceApp.End();
    }

}
