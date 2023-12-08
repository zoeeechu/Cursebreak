/// @description Insert description here
// You can write your code in this editor

/// @description player features 
 deltaTime = delta_time/ 1000000;
// Movements
if(hp <= 0){
	with instance_create_depth(0,0,-1000,obj_fade){
		other.targetRoom = Main_menu
	}
	
	instance_destroy(self)
	
} else {
if (hascontrol)
{
	left_movement = keyboard_check(ord("A")) || keyboard_check(vk_left) ;
	right_movement = keyboard_check(ord("D"))|| keyboard_check(vk_right) ;
	jump = keyboard_check_pressed(ord("W"))||keyboard_check_pressed(vk_space);
	fall = keyboard_check(ord("S")) || keyboard_check_pressed(vk_down);
	dash_move = keyboard_check_pressed(vk_shift);
	movement = right_movement - left_movement;
	
}
horizontal_speed += movement * walk_speed * deltaTime;
	horizontal_speed = clamp(horizontal_speed, walk_speed * -1, walk_speed);
	vertical_speed += gravity_speed;
hp = clamp(hp,0,max_hp);
var input = keyboard_lastkey;
// switch weapons
if(!obj_weapon.reloading){
	
	// switching weapons 
	switch(input){
		case ord("1"):
		obj_weapon.selected_weapon = 0
		break;
	
		case ord("2"):
		obj_weapon.selected_weapon = 1
		break;
	
		case ord("3"):
		obj_weapon.selected_weapon = 2
		break;
	
		case ord("4"):
		obj_weapon.selected_weapon = 3
		break;
	
		case ord("5"):
		obj_weapon.selected_weapon = 4;

		break;
	
		case ord("6"):
		obj_weapon.selected_weapon = 5;
		break;
	
	}
	WeaponSwitch(obj_weapon,obj_weapon.selected_weapon);
}
if(fall && !grounded){
	fall_speed += 0.1;
	fall_speed = clamp(fall_speed,0,0.5)
	vertical_speed += 0.3;
}
vertical_speed = clamp(vertical_speed,-30,20)
// check if on floor
if(place_meeting(x,y+1,obj_wall)){
		grounded = true;
		jumped = false
}
if(!place_meeting(x,y+1,obj_wall) ){
	grounded = false
}
if(place_meeting(x,y+vertical_speed/4, obj_wall)){
	dash_count = 0;
	vertical_speed = 0
	if (!place_meeting(x+horizontal_speed, y+1, obj_wall) && place_meeting(x+horizontal_speed, y+slope_tol, obj_wall))
{
		vertical_speed += abs(horizontal_speed);
		show_debug_message("aaaa")
		grounded = true;
}
} 

if (place_meeting(x+sign(horizontal_speed), y-1, obj_wall))
{
	horizontal_speed = 0;
}

// jump + jump buffer
if(jump){
	jump_counter = 0;
}
if(jump_counter < jump_buffer){
		jump_counter++; // start a counter when jump key is pressed
	if (jump_counter <= jump_buffer && grounded && jumped == false){ // if player lands on the floor before counter is finished, register as a jump
		vertical_speed -= jump_speed;
		jump_counter = 0;
		jumped = true
	}
}
// determines direction that player is facing
if (movement > 0){
	facingDirection = 1;
	image_xscale = facingDirection*-1;
} else if( movement < 0){
	facingDirection = -1;
	image_xscale = facingDirection*-1;
} 
image_yscale = 1;

// slows the player speed faster if player turns direction
if(sign(horizontal_speed) != facingDirection){
	horizontal_speed += 0.5 * facingDirection;
	
	if(horizontal_speed <= 1 && horizontal_speed >= -1){
		horizontal_speed -= 0.1 * facingDirection;
		
		if(horizontal_speed <= 0.1 && horizontal_speed >= -0.1){
		horizontal_speed = 0;
		}
	}
}

// slowly decreases player speed if not moving
if(movement == 0 && horizontal_speed != 0){

	// slows player down until they come to a stop if not pressing a direction
	if(sign(horizontal_speed) == facingDirection && grounded){
		horizontal_speed -= 0.4 * facingDirection;
	} 

	if(horizontal_speed <= 0.4 && horizontal_speed >= -0.4){
			horizontal_speed = 0;
	}
}

move_and_collide(round(horizontal_speed),round(vertical_speed),obj_wall)
// horizontal collison

// restricts player object to room dimensions
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);











if(dash_cd_counter > 0){
	dash_cd_counter -=1;
}
// dash mechanic 
if(dash_move && dashed == false && dash_count == 0 && dash_cd_counter == 0){
	dashed = true;
	dash_count += 1;
	walk_speed = dash_speed;	
	invincible = true;
}

// changes speed and locks vertical height if dashing
if (dashed){
	sprite_index = spr_player_invincible
	dash_time--;
	vertical_speed = 0;
	hascontrol = false;

	horizontal_speed = walk_speed * facingDirection;
	
	if(dash_time <= 0){ // reset to normal after dash state is done
		dash_time = 7;
		invincible = false;
		dashed = false;
		hascontrol = true;
		walk_speed /= dash_modifier;
		sprite_index = spr_player
		dash_cd_counter = dash_cd;
	}
}


// handles weapon attacks
if(mouse_check_button_pressed(mb_left)){
	if(obj_weapon.type == "gun"){
		FireGun(obj_weapon,self);
		
	} else if(obj_weapon.type == "melee"){
		meleeAttack();
	} 
}

// makes sure player cannot be hit while already colliding with an enemy
if(!place_meeting(x,y,enemy_parent)){
	beenHit = false;
}
recoveryGauge = clamp(recoveryGauge,0,recoveryGaugeMax);
}