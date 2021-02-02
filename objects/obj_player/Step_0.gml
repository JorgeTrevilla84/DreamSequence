//Get player input
keyLeft = keyboard_check(ord("A")) or (gamepad_axis_value(0, gp_axislh) < 0);
keyRight = keyboard_check(ord("D")) or (gamepad_axis_value(0, gp_axislh) > 0);
keyUp = keyboard_check(ord("W")) or (gamepad_axis_value(0, gp_axislv) < 0);
keyDown = keyboard_check(ord("S")) or (gamepad_axis_value(0, gp_axislv) > 0);

keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

//Update Sprite Index
var _old_sprite = sprite_index;

if (inputMagnitude != 0){	//if we are moving apply direction from input and update sprite index
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_old_sprite != sprite_index) localFrame = 0;	//This checks if we are not 'runing' and resets the local frame or 'idle' in this case to 0

//Update Image Index call script 
PlayerAnimateSprite();



