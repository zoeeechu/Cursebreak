/// @description Insert description here
// You can write your code in this editor

/// @description player features 
 deltaTime = delta_time/ 1000000;
// Movements

if (hascontrol)
{
	left_movement = keyboard_check(ord("A")) || keyboard_check(vk_left) ;
	right_movement = keyboard_check(ord("D"))|| keyboard_check(vk_right) ;
	jump = keyboard_check(ord("W"))||keyboard_check_pressed(vk_space)||keyboard_check(vk_up);
	fall = keyboard_check(ord("S")) || keyboard_check_pressed(vk_down);
	dash_move = keyboard_check_pressed(vk_shift);
	movement = right_movement - left_movement;
	horizontal_speed += movement * walk_speed * deltaTime;
	horizontal_speed = clamp(horizontal_speed, walk_speed * -1, walk_speed);
	vertical_speed = vertical_speed + gravity_speed;
}
var input = keyboard_lastkey;
// switch weapons

if(!obj_weapon.reloading){
	// switching weapons 
switch(input){
	case ord("1"):
	obj_weapon.selected_weapon = 0
	WeaponSwitch(0);
	break;
	case ord("2"):
	obj_weapon.selected_weapon = 1
	WeaponSwitch(obj_weapon.selected_weapon);
	break;
	
	case ord("3"):
	obj_weapon.selected_weapon = 2
	WeaponSwitch(obj_weapon.selected_weapon);
	break;
	
	case ord("4"):
	obj_weapon.selected_weapon = 3
	WeaponSwitch(obj_weapon.selected_weapon);
	break;
	
	case ord("5"):
	obj_weapon.selected_weapon = 4;
	WeaponSwitch(obj_weapon.selected_weapon);
	break;
	
	// reloads weapon
	case ord("R"):
	obj_weapon.ammo[obj_weapon.selected_weapon] = 0;
	obj_weapon.reload_timer = obj_weapon.reload;
	break;
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


// slows the player speed faster if player turns direction
if(sign(horizontal_speed) != facingDirection){
	horizontal_speed += 0.5 * facingDirection;
	if(horizontal_speed <= 1 && horizontal_speed >= -1){
		horizontal_speed -= 0.1 * facingDirection
		if(horizontal_speed <= 0.1 && horizontal_speed >= -0.1){
		horizontal_speed = 0;
		}
	}
}

if(movement == 0){

// slows player down until they come to a stop if not pressing a direction
if(sign(horizontal_speed) == facingDirection && grounded){
	horizontal_speed -= 0.4 * facingDirection;
} 
if(horizontal_speed <= 0.4 && horizontal_speed >= -0.4){
		horizontal_speed = 0;
	}
}
// horizontal collison

if (place_meeting(x+horizontal_speed, y , obj_wall))
{
	while (!place_meeting(x+ sign(horizontal_speed), y, obj_wall))
	{
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = 0;
}
// moves player horizontally
x = x + horizontal_speed;

// vertical collison

if (place_meeting(x, y+vertical_speed, obj_wall))
{
	while(!place_meeting(x,y + sign(vertical_speed),obj_wall)){
		y += sign(vertical_speed);
}
	vertical_speed = 0;
}
 // moves player vertically 
y = y + vertical_speed;

// restricts player object to room dimensions
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// check if on floor
if(place_meeting(x,y+1, obj_wall)){
	grounded = true;
	dash_count = 0;
} else {
	grounded = false;
}
// saves last grounded position
if(grounded){
	previous_grounded_x = x;
	previous_grounded_y = y;
}

// jump + jump buffer
if(jump){
	jump_counter = 0;
}
if(jump_counter < jump_buffer){
		jump_counter++; // start a counter when jump key is pressed
	if (jump_counter <= jump_buffer && grounded){ // if player lands on the floor before counter is finished, register as a jump
		vertical_speed -= jump_speed;
		jump_counter = 0;
	}
}

if(fall){
	fall_speed += 0.1;
	fall_speed = clamp(fall_speed,0,0.5);
	vertical_speed += fall_speed;
}

// dash mechanic 
if(dash_move && dashed == false && dash_count == 0){
	dashed = true;
	dash_count += 1;
	walk_speed = dash_speed;
}
// changes speed and locks vertical height if dashing
if (dashed){
	dash_time--;
	vertical_speed = 0;
	hascontrol = false;
	horizontal_speed = walk_speed * facingDirection;
	if(dash_time <= 0){ // reset to normal after dash state is done
		dash_time = 7;
		dashed = false;
		hascontrol = true;
		walk_speed /= dash_modifier;
	}
}


// handles weapon attacks
if(mouse_check_button_pressed(mb_left)){
	if(obj_weapon.type == "gun"){
		fireGun();
	} else if(obj_weapon.type == "melee"){
		meleeAttack();
	} 
}

// makes sure player cannot be hit while already colliding with an enemy
if(!place_meeting(x,y,Enemy_parent)){
	invincible = false;
}
