// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function meleeAttack(){
	//if cooldown for weapon is completed
	with(obj_weapon){
		if(current_cd == 0){
			// turns player around if attacking w/ weapon and not facing in attack direction
			if(obj_player.facingDirection != obj_weapon.facingDirection && obj_player.movement == 0){
				obj_player.facingDirection *= -1
				obj_player.image_xscale *= -1;
			}
			if(obj_player.grounded){
		
		// add recoil for horizontal directions
		if(obj_weapon.image_angle <= 80 || obj_weapon.image_angle >= 280){
			obj_player.horizontal_speed -= obj_weapon.recoil
		
		} else if(obj_weapon.image_angle >= 100 && obj_weapon.image_angle <= 260){
			obj_player.horizontal_speed += obj_weapon.recoil
		}
	}
			// start weapon start up frames
			current_startup = startup;
			
			// count down startup frames
			for(var i = startup; i >= 0; i--){
					
				//create a hitbox once start up frames are complete
				if(i == 0){
						
					// set active frames
					current_active = active;
						
					//create a hitbox in front of player
					with instance_create_layer(x + 50 * facingDirection,y,"hitboxes",obj_hitbox){
							
						image_xscale = 2.5;
						image_yscale = 2;
					}
				}
			}
				
			// put weapon on cooldown 
			current_cd = cooldown;
		}
	}
	//move player forward if swinging sword on ground 
	
}