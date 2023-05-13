state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"))

image_speed = 0;
hSpeed = 0; // Horizontal Speed
vSpeed = 0; // Vertical Speed
speedWalk = 2.0; // Movement speed when walking

spriteRun = sHeroPlayerRun;
spriteIdle = sHeroBear; 
localFrame = 0; // Frame relative to direction we're playing
