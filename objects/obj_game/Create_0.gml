/// @desc Init and Globlas
randomize();

global.gamePaused = false;

//global.iCamera = instance_create_layer(0,0,"Instances",obj_camera);
global.iCamera = obj_camera;

room_goto(ROOM_START);