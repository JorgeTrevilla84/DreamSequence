/// @desc Update camera
//Checks if theres a target to follow and update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Updates to follow player
x += (xTo-x) / 15;
y += (yTo-y) / 15;

//Keep camera centered in room and don't exit bounds
x = clamp(x,view_width_half, room_width-view_width_half);
y = clamp(y,view_height_half, room_height-view_height_half);

//Screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

//Zoom functionality
//zoom_level = clamp(zoom_level + (((mouse_wheel_down()-mouse_wheel_up()))*0.1), 0.1, 5);
if (obj_player.keyZoom) {
    zoom_level = 4;// code here
	global.playerLocked = true;
} else {
	zoom_level = 1;
	global.playerLocked = false;
}

var view_w = camera_get_view_width(cam);
var view_h = camera_get_view_height(cam);
show_debug_message("zoom level" + string(zoom_level));

//Set the rate of interpolation for Zoom
var rate = 0.1;
var new_w = lerp(view_w, zoom_level*default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level*default_zoom_height, rate);
camera_set_view_size(cam, new_w, new_h);

//Get the shift necessary to re-align the view.
//var shift_x = x-(new_w-view_w)*0.5;
//var shift_y = y-(new_h-view_h)*0.5;

//Update the view position center zoom 
camera_set_view_pos(cam, x-new_w*0.5, y-new_h*0.5);