//draw_self();



draw_text_color(x-90,y-50,string(id)+", "+ string(current[HEALTH])+"/"+string(base[@ HEALTH])+ ", "+string(current[SPEED])+", "+string(turnFinished)+", hit: "+string(attackWillHit),c_black,c_black,c_black,c_black,bm_dest_alpha)

if(selected) draw_sprite(vMarker,0,x,y);