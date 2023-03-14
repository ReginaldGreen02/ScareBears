var _hp = current[@ HEALTH]/base[@ HEALTH];

draw_sprite(uiHP,0,x-30,y-50); // Sprite_Name, subimage, position x, position y
draw_sprite_part(uiHP,1,0,0,hpBarWidth*_hp,hpBarHeight,x-30,y-50); // Updates health bar to reflect current HP
