// https://www.yoyogames.com/en/tutorials/coffee-break-tutorial-simple-lighting-gml
if !surface_exists(surf){
	var _cam_view_width =  camera_get_view_width(view_camera[0]);
	var _cam_view_height =  camera_get_view_height(view_camera[0]);
	surf = surface_create(_cam_view_width, _cam_view_height);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0);
	draw_rectangle(0,0, _cam_view_width, _cam_view_height, false);
	surface_reset_target();
}

else {
	if (surface_exists(surf)){
	var _cam_view_width =  camera_get_view_width(view_camera[0]);
	var _cam_view_height =  camera_get_view_height(view_camera[0]);
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_y = camera_get_view_y(view_camera[0]);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0,0, _cam_view_width, _cam_view_height, false);
	gpu_set_blendmode(bm_subtract);
	with(obj_light_parent){
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cam_x, _cam_y);
	}
}