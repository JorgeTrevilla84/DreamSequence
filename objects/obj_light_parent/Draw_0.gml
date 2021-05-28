var _spr_w = sprite_width / 2;
var _spr_h = sprite_height / 2;


var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

switch(object_index){
case obj_player:
	draw_sprite_ext(spr_light, 0, x - _cam_x , y - _spr_h - _cam_y, 1, 1, 0, c_white, 1);
	break;
}