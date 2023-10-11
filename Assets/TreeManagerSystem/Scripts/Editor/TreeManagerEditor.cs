using UnityEngine;
using System.Collections;
using UnityEditor;
using TreeManager;
using System.Collections.Generic;
using System;
using System.Linq;
using UnityEditor.SceneManagement;

[CustomEditor(typeof(TreesManager))]
public class TreeManagerEditor : Editor
{
    private TreesManager script;
    private bool showSeasons;
    private bool showRespawns;
    private bool showRegion;
    private bool showTimeChecks;
    private bool showNetworking;
    private bool showGeneral;

    private GUIStyle boxStyle;

    void OnEnable()
    {
        script = (TreesManager)target;

        if (TreesManager.terrains.Count == 0)
        {
            TreesManager instance = GameObject.FindObjectOfType<TreesManager>();

            if (instance != null)
                instance.Init();
        }

    }

    public bool AlreadyInList(List<TreePrototype> array, TreePrototype arrayObject)
    {
        return array.FirstOrDefault(x => x.prefab.name == arrayObject.prefab.name) != null;
    }

    int GetCountOfTerrain(Terrain terrain)
    {
        int amount = 0;

        for(int i = 0; i < script.prototypesData.Count; i++)
        {
            if(script.prototypesData[i].terrain != null && script.prototypesData[i].terrain.Equals(terrain))
            {
                amount++;
            }
        }
        return amount;
    }

    List<TreesManagerTreePrototypeData> ReturnSeasonDataOfTerrain(Terrain terrain)
    {
        List<TreesManagerTreePrototypeData> seasonedTrees = new List<TreesManagerTreePrototypeData>();

        for (int i = 0; i < script.prototypesData.Count; i++)
        {
            if (script.prototypesData[i].terrain.Equals(terrain))
            {
                seasonedTrees.Add(script.prototypesData[i]);
            }
        }

        return seasonedTrees;
    }

    public override void OnInspectorGUI()
    {
        #region boxStyle

        if (boxStyle == null)
        {
            boxStyle = new GUIStyle(GUI.skin.box);
            boxStyle.alignment = TextAnchor.UpperLeft;
            boxStyle.fontStyle = FontStyle.Bold;
            boxStyle.normal.textColor = Color.white;
        }

        #endregion

        GUILayout.Space(20);

        #region PrototypesData Editor
        TerrainData terrainData;
        TreesManagerTreePrototypeData tree;
        var terrains = Terrain.activeTerrains;
        Terrain terrain;
        List<TreesManagerTreePrototypeData> data;
        List<TreePrototype> treePrototypes = new List<TreePrototype>();

        showSeasons = EditorGUILayout.Foldout(showSeasons, "TreesManager Tree Prototypes Variables");

        if (showSeasons)
        {
            EditorGUILayout.BeginVertical(boxStyle);
            script.hasSeasonSupport = EditorGUILayout.Toggle(new GUIContent("Support Seasons", "will there be seasons inside the game, example : Summer, Winter, Autumn and spring."), script.hasSeasonSupport);
            script.InitialPollAmount = EditorGUILayout.IntField(new GUIContent("Initial Poll Object Amount", "how many objects of each prototype will be instantiated on start"), script.InitialPollAmount);
            EditorGUILayout.EndVertical();

            for (int i = 0; i < terrains.Length; i++)
            {
                terrain = terrains[i];
                terrainData = terrain.terrainData;

                if (GetCountOfTerrain(terrain) == terrainData.treePrototypes.Length)
                {
                    EditorGUILayout.BeginVertical();
                    for (int b = 0; b < terrainData.treePrototypes.Length; b++)
                    {
                        if (AlreadyInList(treePrototypes, terrainData.treePrototypes[b])) continue;

                        data = ReturnSeasonDataOfTerrain(terrain);

                        treePrototypes.Add(terrainData.treePrototypes[b]);
                        tree = data[b];
                        tree.terrain = terrain;
                        EditorGUILayout.BeginHorizontal();
                        GUILayout.Space(12);

                        EditorGUILayout.BeginVertical();
                        tree.show = EditorGUILayout.Foldout(tree.show, terrainData.treePrototypes[b].prefab.name + " Prototype");
                        tree.prototypeName = terrainData.treePrototypes[b].prefab.name;

                        if (tree.show)
                        {

                            EditorGUILayout.BeginVertical(boxStyle);

                            tree.isNetworkedObject = EditorGUILayout.Toggle(new GUIContent("Is It Networked Object :", "Is this object a networked object, that means using a networking library syncing method, for example : PhotonView - Photon, Bolt Entity - Bolt etc."), tree.isNetworkedObject);

                            tree.colliderType = (TerrainTreeColliderType)EditorGUILayout.EnumPopup(new GUIContent("Collider Type :", "What type is the collider? Capsule or Box"), tree.colliderType);
                            tree.isTrigger = EditorGUILayout.Toggle(new GUIContent("Is Collider Trigger :", "Is this collider trigger ?"), tree.isTrigger);

                            tree.colliderCenter = EditorGUILayout.Vector3Field(new GUIContent("Collider Center :", "The center of the collider"), tree.colliderCenter);
                            if (tree.colliderType == TerrainTreeColliderType.Capsule)
                            {
                                tree.colliderHeight = EditorGUILayout.FloatField(new GUIContent("Collider Height :", "The collider height"), tree.colliderHeight);
                                tree.colliderRadius = EditorGUILayout.FloatField(new GUIContent("Collider Radius :", "The collider radius"), tree.colliderRadius);
                            }
                            else
                            {
                                tree.colliderSize = EditorGUILayout.Vector3Field(new GUIContent("Collider Size :", "The collider size"), tree.colliderSize);
                            }

                            if (script.hasSeasonSupport)
                            {
                                EditorGUILayout.Space();

                                for (int c = 0; c < 4; c++)
                                {
                                    string season = "";

                                    switch ((Seasons)c)
                                    {
                                        case Seasons.Summer:
                                            season = "Summer";
                                            break;
                                        case Seasons.Winter:
                                            season = "Winter";
                                            break;
                                        case Seasons.Spring:
                                            season = "Spring";
                                            break;
                                        case Seasons.Autumn:
                                            season = "Autumn";
                                            break;
                                    }

                                    tree.SeasonTreesGameObjects[c].prefab = (GameObject)EditorGUILayout.ObjectField("Prefab for season : " + season, tree.SeasonTreesGameObjects[c].prefab, typeof(GameObject), false);
                                }

                            }

                            if(GUILayout.Button("Customize Collider"))
                            {
                                InitCustomizeCollider(tree, b);
                            }

                            EditorGUILayout.EndVertical();
                        }
                        EditorGUILayout.EndVertical();
                        EditorGUILayout.EndHorizontal();
                    }
                    EditorGUILayout.EndVertical();
                }
                else
                {
                    Generate();
                }
            }

            EditorGUILayout.Space();

            EditorGUILayout.BeginVertical(boxStyle);

            if (GUILayout.Button("Update Tree Prototypes"))
            {
                Generate();
            }

            if (GUILayout.Button("Apply Changes"))
            {
                EditorUtility.SetDirty(target);
                EditorApplication.SaveScene();
            }

            if (GUILayout.Button("Restart Prefabs"))
            {
                if (EditorUtility.DisplayDialog("Restart Prefabs", "Are u sure you want to restart all the prefabs selections ?, note that this action cant be undone.", "Yes, i am sure", "No, i want to keep my prefabs"))
                {
                    script.prototypesData = new List<TreesManagerTreePrototypeData>();
                    Generate();
                }
            }

            EditorGUILayout.EndVertical();

        }

        #endregion

        #region TreeRespawnsEditor
        showRespawns = EditorGUILayout.Foldout(showRespawns, "TreesManager Tree Respawns Variables");

        if (showRespawns)
        {
            EditorGUILayout.BeginVertical(boxStyle);
            script.respawnTrees = EditorGUILayout.Toggle(new GUIContent("Can trees respawn :", "Can the game trees respawn ?"), script.respawnTrees);
            script.respawnTime = EditorGUILayout.FloatField(new GUIContent("How often will the trees respawn : ", "How much time will it take for the trees to respawn ?"), script.respawnTime);
            EditorGUILayout.EndVertical();
        }

        #endregion

        #region CheckingTimesEditor
        showTimeChecks = EditorGUILayout.Foldout(showTimeChecks, "TreesManager Timing Variables");

        if (showTimeChecks)
        {
            EditorGUILayout.BeginVertical(boxStyle);
            script.checkTreesFrequenty = EditorGUILayout.FloatField(new GUIContent("How often will the trees be checked :", "How often will the system check trees status, Checked in minuts"), script.checkTreesFrequenty);
            script.restoreIdleTreesTime = EditorGUILayout.FloatField(new GUIContent("How much time will it take the tree to turn back to a tree instance : ", "How much time will it take a tree that was hit, to go back into a terrain tree after not being it for a specified time. this will help with performance"), script.restoreIdleTreesTime);
            EditorGUILayout.EndVertical();
        }
        #endregion

        #region RegionEditor
        showRegion = EditorGUILayout.Foldout(showRegion, "TreesManager Region Variables");

        if (showRegion)
        {
            EditorGUILayout.BeginVertical(boxStyle);
            script.sectorSliceX = EditorGUILayout.IntField(new GUIContent("The sector slice on the X Axis : ", "The sector slice of the grid on the X Axis"), script.sectorSliceX);
            script.sectorSliceZ = EditorGUILayout.IntField(new GUIContent("The sector slice on the Z Axis : ", "The sector slice of the grid on the Z Axis"), script.sectorSliceZ);
            EditorGUILayout.EndVertical();
        }

        #endregion

        #region NetworkingEditor
        showNetworking = EditorGUILayout.Foldout(showNetworking, "TreesManager Networking Variables");

        if (showNetworking)
        {
            EditorGUILayout.BeginVertical(boxStyle);
            script.isNetworkedAuth = EditorGUILayout.Toggle(new GUIContent("Is your networking module authoritative : ", "Is your networking module Authoritative or not"), script.isNetworkedAuth);
            EditorGUILayout.EndVertical();
        }

        #endregion

        #region GeneralVariables
        showGeneral = EditorGUILayout.Foldout(showGeneral, "TreesManager General Variables");

        if (showGeneral)
        {
            script.SaveResources = EditorGUILayout.Toggle(new GUIContent("Save Resources :", "Do you want to save the resources so it will be loaded everytime you restart the game ?, this will only work if you are using the EasySave Extension"), script.SaveResources);
        }
        #endregion

        if (GUI.changed)
        {
            EditorUtility.SetDirty(target);
        }

    }

    void InitCustomizeCollider(TreesManagerTreePrototypeData data, int index)
    {
        TreeColliderCustomization customizationScript = GameObject.FindObjectOfType<TreeColliderCustomization>();

        if(customizationScript != null)
        {
            customizationScript.Dispose();
            InitCustomizeCollider(data, index); // Loop over until we destroy them all.

            return;
        }

        //create customization object

        GameObject go;
        GameObject treePrototypeObject;

        go = new GameObject();
        customizationScript = go.AddComponent<TreeColliderCustomization>();
        customizationScript.data = data;
        customizationScript.colliderType = data.colliderType;
        customizationScript.treeScript = script;
        go.transform.name = "Collider Customization";

        if (data.colliderType == TerrainTreeColliderType.Capsule)
        {
            var collider = go.AddComponent<CapsuleCollider>();
            collider.center = data.colliderCenter;
            collider.height = data.colliderHeight;
            collider.radius = data.colliderRadius;
        }
        else
        {
            var collider = go.AddComponent<BoxCollider>();
            collider.center = data.colliderCenter;
            collider.size = data.colliderSize;
        }

        customizationScript.Init();

        var treePrototype = script.GetTreeInstanceFromName(data.terrain, data.prototypeName);

        if(treePrototype != null)
        {
            Vector3 CustomizationPosition = new Vector3(-9999, -9999, -9999);

            treePrototypeObject = Instantiate(treePrototype.prefab, CustomizationPosition, Quaternion.identity) as GameObject;
            go.transform.position = CustomizationPosition;
            go.transform.rotation = Quaternion.identity;
            customizationScript.viewedResourceInstance = treePrototypeObject.transform;

            var sceneCameras = SceneView.GetAllSceneCameras();

            if(sceneCameras.Length > 0)
            {
                var sceneView = EditorWindow.GetWindow<SceneView>(); // open the scene view
                customizationScript.lastSceneCameraPivot = sceneView.pivot;
                sceneView.LookAtDirect(treePrototypeObject.transform.position, Quaternion.Euler(0, 90, 0), 50);
            }

        }

        Selection.activeObject = go;
        EditorGUIUtility.PingObject(go);

    }

    void Generate()
    {
        //script.TreesSeasonedPrefabs = new List<TreeSeasonedData>();
        Terrain terrain;
        TreesManagerTreePrototypeData tree = null;
        List<TreesManagerTreePrototypeData> seasonData;

        for (int i = 0; i < Terrain.activeTerrains.Length; i++)
        {
            terrain = Terrain.activeTerrains[i];
            seasonData = ReturnSeasonDataOfTerrain(terrain);

            int difference = terrain.terrainData.treePrototypes.Length - seasonData.Count;

            if (difference > 0)
            {
                for (int b = 0; b < difference; b++)
                {
                    script.prototypesData.Add(new TreesManagerTreePrototypeData());

                    tree = script.prototypesData[script.prototypesData.Count - 1];
                    tree.terrain = terrain;

                    for (int c = 0; c < Enum.GetValues(typeof(Seasons)).Length; c++)
                    {
                        tree.SeasonTreesGameObjects.Add(new SeasonTreeObject());
                    }
                }
                return;
            }
            else if (difference < 0)
            {
                for (int b = difference; b < 0; b++)
                {
                    script.prototypesData.Remove(seasonData[seasonData.Count - 1]);
                }
                return;
            }

            EditorUtility.SetDirty(target);
            EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo();
        }
    }
}




