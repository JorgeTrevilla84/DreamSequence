camera = camera_create();

var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var projection_matrix = matrix_build_projection_ortho(640,360,1,10000);//Game Resolution is set in here

camera_set_view_mat(camera, view_matrix);
camera_set_proj_mat(camera, projection_matrix);

view_camera[0] = camera;

follow = obj_player;

xTo = x;
yTo = y;

