instanceList = ds_list_create();
for (var i = 0; i < instance_number(pOW); i++){
	var inst = instance_find(pOW, i);
	ds_list_add(instanceList, inst);
}
player = instance_find(owPlayer,0);
playerPosX = player.x;
playerPosY = player.y;