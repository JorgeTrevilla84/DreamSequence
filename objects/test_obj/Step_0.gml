/// @description Insert description here

//If textbox has not been created yet, make one
if(place_meeting(x,y, obj_player)){
	if(keyboard_check_pressed(vk_control)){
	if(_my_textbox == noone){
		_my_textbox = instance_create_layer(x,y, "Text", obj_textbox);
		_my_textbox._text = _my_text_array;		//This overwrites the text from default obj_text
		_my_textbox._creator = self;
		_my_textbox._name_tag = _my_name;
		draw_set_color(_text_color);
		}
	}
} else {
	if (_my_textbox != noone){
	instance_destroy(_my_textbox);
	_my_textbox = noone;
	}
}