/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

// deletes enemy once hp is 0 
	weaponFollowEnemy(weaponID,self);
if(hp <= 0){
	show_debug_message("enemy killed");
	instance_destroy();
} else {

// sets enemy to aggro on player if player has hit them
if(beenHit){
	player_aggro = true;
} 

//if player in in a range around enemy and wall is not in between them
if(distance_to_object(obj_player) < detection_range && collision_line(x,y,obj_player.x, obj_player.y,obj_wall,false,true) == noone){
	player_aggro = true;
	aggro_time = room_speed * aggro_seconds;
}

// determines direction that player is facing
if (sign(movementX) > 0){
	image_xscale = sign(movementX)*-1 * sprite_scale;
} else if( sign(movementX) < 0){
	image_xscale = sign(movementX)*-1 * sprite_scale;
} 

// lock onto player and start moving towards them
if(player_aggro && instance_exists(obj_player)){

	// doubles aggro time if being hit triggered the aggro
	if(beenHit){ 
		self.aggro_time = aggro_seconds*2 * room_speed;
		beenHit = false;
	}
	//count down aggro time
	aggro_time -= 1;
	
	// finds distance from player in x and y axis
	movementY = obj_player.y - y;
	movementX = obj_player.x - x;
	sprite_index = spr_enemy_aggro; 
	if(collision_line(x,y,obj_player.x, obj_player.y,obj_wall,false,true) == noone){
			FireGun(weaponID,id);
	}
	// jump towards player once in a certain range
	if(movementY < -20 && grounded && movementX > -detection_range*1.5 && movementX < detection_range*1.5 && !jumped){
		vertical_speed -= jump_speed;
		jumped = true;
	}
	
}

horizontal_speed += sign(movementX) * walk_speed * deltaTime * random(1);

// stop enemy once aggro time is over 
if(aggro_time == 0){
	player_aggro = false;
	aggro_time = room_speed * aggro_seconds;
	movementX = 0;
	horizontal_speed = 0;
	sprite_index = spr_enemy
}


vertical_speed = vertical_speed + gravity_speed;

if(!inKnockback){
horizontal_speed = clamp(horizontal_speed, walk_speed * -1, walk_speed);
} 


// horizontal collison
if (place_meeting(x+horizontal_speed, y , obj_wall))
{
	while (!place_meeting(x+ sign(horizontal_speed), y, obj_wall))
	{
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = 0;
		if(grounded && !jumped && player_aggro){
		vertical_speed -= jump_speed;
		jumped = true;
		}
}
x += horizontal_speed

// vertical collison
if (place_meeting(x, y+vertical_speed, obj_wall))
{
	while(!place_meeting(x,y + sign(vertical_speed),obj_wall)){
		y += sign(vertical_speed);
}
	vertical_speed = 0;
}

 // moves players y position by y speed
y = y + vertical_speed;
// check if on floor
// restricts player object to room dimensions

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
if(place_meeting(x,y+1, obj_wall)){
	grounded = true;
	jumped = false;
} else {
	grounded = false;
}

}



