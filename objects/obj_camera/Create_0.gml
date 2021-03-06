/// @desc Camera Setup
// Docs: https://www.youtube.com/watch?v=0dcfqH4aSBw&list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&index=6
// Docs: https://forum.yoyogames.com/index.php?threads/guide-meet-the-new-camera-system.12269/

cam = view_camera[0];
follow = obj_player;
view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

zoom_level = 1;
default_zoom_width = camera_get_view_width(cam);
default_zoom_height = camera_get_view_height(cam);

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;