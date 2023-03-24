{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmCombat",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_13316477","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_1177F728","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_49EE24CF","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_668B4D05","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_6215DF0A","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_7592D157","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_70BD377A","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_5114A3EE","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_821ABC2","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_6BA9DD72","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_2A0F7084","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_14D4A0FD","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_15AACA9A","path":"rooms/rmCombat/rmCombat.yy",},
    {"name":"inst_7FA6FE11","path":"rooms/rmCombat/rmCombat.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"SkillsUI","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_821ABC2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"Cancel",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"CancelButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6BA9DD72","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"NULL",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"SkillButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2A0F7084","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"NULL",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"SkillButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":352.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"TargetUI","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_70BD377A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"Cancel",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"CancelButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":288.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"BaseUI","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7592D157","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"Attack",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"AttackButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5114A3EE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"Defend",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"DefendButton",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_14D4A0FD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"Skill",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"SkillMenu",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_15AACA9A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"debug: Win",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"DebugWin",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7FA6FE11","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oButtonGeneric","path":"objects/oButtonGeneric/oButtonGeneric.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"Label","path":"objects/pButton/pButton.yy",},"value":"debug: Lose",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pButton","path":"objects/pButton/pButton.yy",},"propertyId":{"name":"MainFunc","path":"objects/pButton/pButton.yy",},"value":"DebugLose",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":96.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"sequences","assets":[],"depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13316477","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"cManager","path":"objects/cManager/cManager.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1177F728","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"cSpawn","path":"objects/cSpawn/cSpawn.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_49EE24CF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"cSpawn","path":"objects/cSpawn/cSpawn.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_668B4D05","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"cSpawn","path":"objects/cSpawn/cSpawn.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6215DF0A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"cSpawn","path":"objects/cSpawn/cSpawn.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"Background","path":"sprites/Background/Background.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":360,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}