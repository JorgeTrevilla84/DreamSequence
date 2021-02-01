collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.25;

spriteRun = spr_player_run;
spriteIdle = spr_4way_placeholder;
localFrame = 0;	//Tells what frame in the sprite animation