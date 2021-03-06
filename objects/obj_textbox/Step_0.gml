if (obj_player.keyItem){//this doesnt work on xbox controller
	if(_character_count < string_length(_text[_page])){
		_character_count = string_length(_text[_page]);
	}
	
	//Only increase page, if there's an actual page to go to
	if(_page +1 < array_length(_text)){
		_page += 1;
		_character_count = 0;
		
	} else {
		global.playerLocked = false;// This frees the player back
		instance_destroy();
		_creator.alarm[1] = 1;
	}
}