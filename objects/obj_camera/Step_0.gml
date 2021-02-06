//Follow player

x +=  (xTo - x)/25;
y +=  (yTo - y)/25;

if (follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, view_matrix);