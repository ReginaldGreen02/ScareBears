//Debug code
draw_text(0,0,"Debug: Room persistent? "+(string(room_persistent ? "true":"false")));
for (var i = 0; i < ds_list_size(instanceList); i++){
	draw_text(0,32+(i*16),string(instanceList[|i]));
}