/// @description Insert description here
// You can write your code in this editor

if(hp <= 0){
	show_debug_message("enemy killed");
	assignedDoor.unlock_count += 1
	instance_destroy(self);
	
}
