/// @desc Update camera
//Checks if theres a target to follow and update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep camera centered in room

x = clamp(x,view_width_half, room_width - view_width_half);
y = clamp(y,view_height_half, room_height - view_height_half);

//Screenshake

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

camera_set_view_pos(cam, x - view_width_half, y - view_height_half);
