function PlayerCollision(){
	
	var _collision = false;
	//show_debug_message("collision state" + string(_collision));
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)){
		
		//It will cause the player to 'bounce' to the left after colliding
		x -= x mod TILE_SIZE;
		//Bounce into the right
		if (sign(hSpeed) == 1) x += TILE_SIZE - 1;
		//Reduce Horizontal speed to 0
		hSpeed = 0;
		_collision = true
		
	}
	
	//Horizontal Move Commit
	x += hSpeed;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)){
			
		y -= y mod TILE_SIZE;
		if (sign(vSpeed) == 1) y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true
		//show_debug_message("collision state" + string(_collision));
		
	}
	
	//Vertical Move Commit
	y += vSpeed;
	
	return _collision;
}