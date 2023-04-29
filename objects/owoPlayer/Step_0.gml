/*
Blaze Creates Code:

var horiz = keyboard_check(ord("D"))-keyboard_check(ord("A"));
var vert = keyboard_check(ord("S"))-keyboard_check(ord("W"));

x+=horiz*2;
y+=vert*2;
*/

// Shaun Spalding code

// Get Player Input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;

//Update Sprite Index

/*var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection; // Auto-wrap angle to be correct value;
	sprite_index = spriteRun; // If moving, set to run
	
} else sprite_index = spriteIdle; // Otherwise, set Idle
if (_oldSprite != sprite_index) localFrame = 0; //Reset when changing animations

//Update Image Index
PlayerAnimateSprite();
*/

