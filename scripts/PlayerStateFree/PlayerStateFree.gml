//State Machine
function PlayerStateFree(){
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
	
	//Change State
	if (keyActivate){
		state = PlayerStateDash;
		moveDistanceRemaining = distanceDash	//No parenthesis to refere to the script itself
	}
}