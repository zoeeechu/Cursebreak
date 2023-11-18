/// @description Insert description here
// You can write your code in this editor

/// @description variables
healthpoints = 100;

horizontal_speed = 0;
vertical_speed = 0;
gravity_speed = 0.35;

walk_speed = 12; 
jump_speed = 12;

hascontrol = true;


dash_modifier = 2;
dashed = false;
dash_time = 7;
dash_count = 0;
dash_speed = walk_speed * dash_modifier;

grounded = false;
jumped = false;

jump_buffer = 6;
jump_counter = 0;

fall_speed = 0;

facingDirection = 0;

invincible = false;

// handles firing gun weapons 
function fireGun(){
	// if player has ammo, isn't on cd and isn't reloading
		if(obj_weapon.ammo[obj_weapon.selected_weapon] != 0 && obj_weapon.current_cd == 0 && obj_weapon.reloading != true){
		var bulletType; 
		// change bullet type depending on weapon 
			if(obj_weapon.selected_weapon == 4){
				bulletType = obj_rocket;
			} else {
				bulletType = obj_bullet;
			}
		// create an instance of the bullet type 
		with instance_create_layer(obj_weapon.x,obj_weapon.y,"bullets",bulletType){
			
			// set the direction and speed of the bullet to know where to shoot it
			direction = obj_weapon.image_angle;
			speed = obj_weapon.bullet_speed;
			image_angle = direction;
			
				// decrease ammo and put weapon on cooldown
			obj_weapon.ammo[obj_weapon.selected_weapon] -= 1;
			show_debug_message($"ammo {obj_weapon.ammo[obj_weapon.selected_weapon]}")
			// put weapon on cooldown
			obj_weapon.current_cd = obj_weapon.cooldown;
		
		// change bullet appearence based on what weapon is selected
		switch(obj_weapon.selected_weapon){
			
			case 1: // rifle
			image_xscale = 2;
			break;

			case 2: //sniper 
			image_xscale = 5;
			break;
			
		}
		show_debug_message(image_angle);
		
		// add recoil for vertical directions
		if(image_angle >= 230 && image_angle <= 330 && !obj_player.grounded){
			obj_player.vertical_speed -= obj_weapon.recoil * 0.75
		} else if(image_angle <= 150 && image_angle >= 10){
			obj_player.vertical_speed += obj_weapon.recoil * 0.75
		}
		
			// add recoil for horizontal directions
	if(obj_weapon.image_angle <= 80 || obj_weapon.image_angle >= 280){
		obj_player.horizontal_speed -= obj_weapon.recoil
		
		
	} else if(obj_weapon.image_angle >= 100 && obj_weapon.image_angle <= 260){
		obj_player.horizontal_speed += obj_weapon.recoil
	}
	}
	}
}



function meleeAttack(){
	//if cooldown for weapon is completed
	if(obj_weapon.current_cd == 0){
		// start weapon start up frames
			obj_weapon.current_startup = obj_weapon.startup;
			// count down startup frames
			for(var i = obj_weapon.startup; i >= 0; i--){
				//create a hitbox once start up frames are complete
				if(i == 0){
					//create a hitbox in front of player
					with instance_create_layer(obj_weapon.x + 50 * obj_weapon.facingDirection,obj_weapon.y,"hitboxes",obj_hitbox){
						// set active frames
						obj_weapon.current_active = obj_weapon.active;
						image_xscale = 2.5;
						image_yscale = 2;
					}
				}
			}
			// put weapon on cooldown 
			obj_weapon.current_cd = obj_weapon.cooldown;
		}
	
	//move player forward if swinging sword on ground 
	if(obj_player.grounded){
		// add recoil for horizontal directions
		if(obj_weapon.image_angle <= 80 || obj_weapon.image_angle >= 280){
			obj_player.horizontal_speed -= obj_weapon.recoil
		
		} else if(obj_weapon.image_angle >= 100 && obj_weapon.image_angle <= 260){
			obj_player.horizontal_speed += obj_weapon.recoil
			}
		}
	}