/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,enemy_parent)){
	other.beenHit = true;
	with instance_create_layer(x,y,"hitboxes",obj_hitbox){
	image_xscale = 3;
	image_yscale = 3;
	show_debug_message("hitbox created")
	}
	instance_destroy(self);
}
