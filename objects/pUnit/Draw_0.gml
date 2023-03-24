//draw_self();



// draw_text_color(x-90,y-50,string(id)+ ", Attack: "+string(current[ATTACKPOWER])+", "+string(turnFinished)+", hit: "+string(attackWillHit),c_black,c_black,c_black,c_black,bm_dest_alpha)

// drawTarget is called first to ensure the sprite is drawn underneath everything.
if (drawTarget) draw_sprite(vTargeting, 0, x, y);

if (selected) draw_sprite(vMarker, 0, x, y);

// Team number debug
draw_text(x,y, string(team));
