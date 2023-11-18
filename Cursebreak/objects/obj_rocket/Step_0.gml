/// @description Insert description here
// You can write your code in this editor
	
if(place_meeting(x,y,obj_wall)){
	obj_weapon.current_active = obj_weapon.active;
	with instance_create_layer(x,y,"hitboxes",obj_hitbox){
		image_xscale = 3;
		image_yscale = 3;
		show_debug_message("hitbox created")
	}
	instance_destroy(self);
} else if( x > room_width || x < 0 || y > room_width || y < 0){
	show_debug_message("deleted")
	instance_destroy(self);
}


