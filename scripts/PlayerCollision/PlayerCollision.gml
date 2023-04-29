// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){

var _collision = false;

//Horizontal Tiles

if(tilemap_get_at_pixel(collisionMap,x+ hSpeed,y)){
	x -= x mod 16;
	if(sign(hSpeed) == 1) x += 16 -1;
	hSpeed = 0;
	_collision = true;
}

// Horizontal Move Commit
x += hSpeed;

//Vertical Tiles

if(tilemap_get_at_pixel(collisionMap,x , y + vSpeed)){
	y -= y mod 16;
	if(sign(vSpeed) == 1) x += 16 -1;
	vSpeed = 0;
	_collision = true;
}

//Vertical Move Commit
y += vSpeed;

}