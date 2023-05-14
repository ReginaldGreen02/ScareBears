/// @desc Initialize & Globals
randomize();

// Blaze Creates Code
instanceList = ds_list_create();
for (var i = 0; i < instance_number(pOWParent); i++)
{
	var inst = instance_find(pOWParent, i);
	ds_list_add(instanceList, inst);
}

player = instance_find(owoPlayer, 0);
//playerPosX = player.x;
//playerPosY = player.y;


// Spaulding Code
global.gamePaused = false;

global.iCamera = instance_create_layer(0,0,layer,oCamera);


room_goto(ROOM_START);