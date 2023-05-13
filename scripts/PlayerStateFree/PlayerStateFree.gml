function PlayerStateFree(){
	
	//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);


PlayerCollision();

//Update Sprite Index

var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection; // Auto-wrap angle to be correct value;
	sprite_index = spriteRun; // If moving, set to run
	
} else sprite_index = spriteIdle; // Otherwise, set Idle
if (_oldSprite != sprite_index) localFrame = 0; //Reset when changing animations

//Update Image Index
PlayerAnimateSprite();

}