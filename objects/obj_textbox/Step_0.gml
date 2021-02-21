if (keyboard_check_pressed(vk_control)){
	//Only increase page, if there's an actual page to go to
	if(_page +1 < array_length(_text)){
		_page += 1;
		_character_count = 0;
		
	} else {
		
		instance_destroy();
		_creator._my_textbox = noone;
	}
}