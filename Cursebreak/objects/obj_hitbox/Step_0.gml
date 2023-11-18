/// @description Insert description here
// You can write your code in this editor
show_debug_message(obj_weapon.current_active)
if(obj_weapon.current_active == 0){
	instance_destroy(self);
	obj_weapon.isActive = false;
	show_debug_message("inactive")
}
