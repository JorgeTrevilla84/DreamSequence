function NewTextBox(){
	//This will make the text object
	
	var _obj;
	if (instance_exists(obj_text))
		_obj = obj_text_queued;
		else
		_obj = obj_text;
		
	with (instance_create_layer(0,0,"Instances", _obj)){
		show_debug_message("***text box obj" + string(_obj));
		message = txt_message;
		if (instance_exists(other)) originInstance = other.id
		else
		originInstance = noone;
		if (argument_count > 1) background = argument[1];
		else
		background = 1;
	}
	//Making sure the player is unlocked
	with (obj_player){
	if (state != PlayerStateLocked){
		lastState = state;
		state = PlayerStateLocked;
		}
	} 
}