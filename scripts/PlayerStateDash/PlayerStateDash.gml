//This might not work perfectly with 8 fps animations...

function PlayerStateDash(){
	hSpeed = lengthdir_x(speedDash, direction);
	vSpeed = lengthdir_y(speedDash, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedDash);
	var _collided = PlayerCollision();
	
	//Update Sprite using the cardinal direction
	sprite_index = spriteDash;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	/*Fits animated sprites to the game time, no matter how short or long please refer to' https://youtu.be/5Nd63OBpmog?t=1648 'for more info
	bc I didn't understand this*/
	image_index = (CARDINAL_DIR * _totalFrames) + min((( 1 - (moveDistanceRemaining / distanceDash)) * (_totalFrames)), _totalFrames - 1);
	
	//Return to normal or 'Free' state after Dash is complete
	if (moveDistanceRemaining <= 0 ){
		state = PlayerStateFree;
	}
}