// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FireGun(argument0, argument1){
	var bulletType; 
	var entityGun = argument0;
	var entity = argument1;
	// change bullet type depending on weapon 
	if(entityGun == obj_weapon){
		switch(entityGun.selected_weapon){
			default:
			bulletType = obj_bullet;
			break;
				
			case 4:
			bulletType = obj_rocket;
			break;
				
			case 5:
			bulletType = obj_laser;
			break;
		}
	} else {
		switch(entityGun.selected_weapon){
			default:
			bulletType = obj_bulletE;
			break;
				
			case 4:
			bulletType = obj_rocketE;
			break;
				
			case 5:
			bulletType = obj_laserE;
			break;
		}
	}
	
	// if player has ammo, isn't on cd and isn't reloading
		if(entityGun.ammo[entityGun.selected_weapon] != 0 && entityGun.current_cd == 0 && entityGun.reloading != true){
			
		// decrease ammo and put weapon on cooldown
		entityGun.ammo[entityGun.selected_weapon] -= 1;
		show_debug_message($"ammo {entityGun.ammo[entityGun.selected_weapon]}")
		
		// put weapon on cooldown
		entityGun.current_cd = entityGun.cooldown;
	

	// create an instance of the bullet type 
	if(!place_meeting(entityGun.x,entityGun.y,obj_wall)){
		with instance_create_layer(entityGun.x,entityGun.y,"bullets",bulletType){
			
			// set the direction and speed of the bullet to know where to shoot it
			direction = entityGun.image_angle;
			speed = entityGun.bullet_speed;
			image_angle = direction;
			
			
		
			// change bullet appearence based on what weapon is selected
			switch(entityGun.selected_weapon){
			
				case 1: // rifle
				image_xscale = 2;
				break;

				case 2: //sniper 
				image_xscale = 5;
				break;
			
				case 4: // rocket
				image_yscale = 3;
				image_xscale = 3;
				break;
			
				case 5: // laser
				image_xscale =3
				image_yscale = 0.5;
				break;
			}

			// add recoil for vertical directions
			if(image_angle >= 230 && image_angle <= 330 && !entity.grounded){
				entity.vertical_speed -= entityGun.recoil * 0.75
			
			} else if(image_angle <= 150 && image_angle >= 10){
				entity.vertical_speed += entityGun.recoil * 0.75
			}
		
					// add recoil for horizontal directions
			if(entityGun.image_angle <= 80 || entityGun.image_angle >= 280){
				entity.horizontal_speed -= entityGun.recoil
				
			} else if(entityGun.image_angle >= 100 && entityGun.image_angle <= 260){
				entity.horizontal_speed += entityGun.recoil
			}
		}
		}
	}
}