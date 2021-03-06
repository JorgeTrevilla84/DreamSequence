/// @description Creates textbox

//If textbox has not been created yet, make one
_get_camera = view_camera[0];
_cam_view_width = camera_get_view_width(_get_camera);
_cam_view_height = camera_get_view_height(_get_camera);
_cam_x = camera_get_view_x(_get_camera);
_cam_y = camera_get_view_y(_get_camera);

if(place_meeting(x,y, obj_player)){
	 if(keyboard_check_pressed(vk_control)){	
		if(_my_textbox == noone){
			global.playerLocked = true;
			_cam_center_width = _cam_view_width*0.33;
			_cam_center_height = _cam_view_height*0.66;
			_my_textbox = instance_create_layer(_cam_x+_cam_center_width,_cam_y+_cam_center_height, "Text", obj_textbox);
			//show_debug_message("after IF statemnt cam coords" + string(_cam_view_width) + string(_cam_view_height));
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





