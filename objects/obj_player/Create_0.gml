//Main player variables

state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.50;
speedDash = 6;
distanceDash = 52;
spriteDash = spr_4way_dash_placeholder_strip4;
spriteRun = spr_player_run;
spriteIdle = spr_player;
localFrame = 0;	//Tells what frame in the sprite animation

gamepad_set_axis_deadzone(0,0.3);