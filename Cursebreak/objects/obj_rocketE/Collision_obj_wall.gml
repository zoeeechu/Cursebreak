/// @description Insert description here
// You can write your code in this editor

obj_weapon.current_active = obj_weapon.active;
with instance_create_layer(x,y,"hitboxes",obj_hitbox){
	image_xscale = 3;
	image_yscale = 3;
	show_debug_message("hitbox created")
}
instance_destroy(self);
