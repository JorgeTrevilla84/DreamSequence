<<<<<<< HEAD
/// @desc Init and Globlas
/// Testing repo
randomize();

global.gamePaused = false;

//global.iCamera = instance_create_layer(0,0,"Instances",obj_camera);
global.iCamera = obj_camera;

global.playerLocked = false;

room_goto(ROOM_START);
audio_play_sound(mus_ambient_modular_01, 1, true);

=======
/// @desc Init and Globlas
/// Testing repo
randomize();

global.gamePaused = false;

global.soundZoomOutReset = false;

global.soundZoomInReset = true;

global.isFileSaved = false;
//global.iCamera = instance_create_layer(0,0,"Instances",obj_camera);
global.iCamera = obj_camera;

global.playerLocked = false;

room_goto(ROOM_START);
//audio_play_sound(mus_ambient_modular_01, 1, true);

>>>>>>> master
