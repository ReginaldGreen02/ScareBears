
draw_text_color(0,0,string(global.selectedUnit),c_black,c_black,c_black,c_black,bm_dest_alpha)


for(var i = 0 ; i < ds_list_size(global.units);i++){
	draw_text_color(0,16+(i*16),string(global.units[|i]),c_black,c_black,c_black,c_black,bm_dest_alpha);
}