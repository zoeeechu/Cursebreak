/// @description Insert description here
// You can write your code in this editor

// count down active frames 
active_time -= 1;
if(active_time == 0){
	ended = true;
	with(obj_enemy){
		invincible = false;
		inKnockback = false;
	}
}

if(ended){
	instance_destroy(self);
}
