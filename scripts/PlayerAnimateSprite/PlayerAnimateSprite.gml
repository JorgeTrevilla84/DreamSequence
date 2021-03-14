// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimateSprite(){

	//gets us cardinal points on 90 degrees, can scale up to '8 direction' by using 'round(direction/45)'
	var _total_frames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR  *  _total_frames); // this will get the image 'sub frames' of the sprites based on the direction
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	//If animation would loop on next  game step
	if (localFrame >= _total_frames){
		animationEnd= true;
		localFrame -= _total_frames;
	} else {
		animationEnd = false;
		}
}