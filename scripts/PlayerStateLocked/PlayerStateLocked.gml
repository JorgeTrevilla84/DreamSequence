//State Machine
function PlayerStateLocked(){
	//show_debug_message("PlayerStateLocked reached");
	
	//Movement
	hSpeed = 0;
	vSpeed = 0;
	
	if (!global.playerLocked) {
		state = PlayerStateFree;
	}
}