var cx = camera_get_view_x(view_camera[0]); // Get the x position of the camera
var cy = camera_get_view_y(view_camera[0]); // Get the y position of the camera
var xx = (x-cx)*Display_ScaleX; // Converting x position (world space) to GUI space
var yy = (y-cy)*Display_ScaleY; // Converting y position (world space) to GUI space

var _hp = current[@ HEALTH]/base[@ HEALTH];

draw_sprite(uiHP,0,xx-30,yy-80); // Sprite_Name, subimage, position x, position y
draw_sprite_part(uiHP,1,0,0,hpBarWidth*_hp,hpBarHeight,xx-30,yy-80); // Updates health bar to reflect current HP



var _sp = current[@ SKILLPOINTS]/base[@ SKILLPOINTS];
draw_sprite_part(uiSP,1,0,0,hpBarWidth*_sp,hpBarHeight,xx-95,yy-80); // Updates skillpoints bar to reflect current SP
