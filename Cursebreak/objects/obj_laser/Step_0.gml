/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_wall) || x > room_width || x < 0 || y > room_width || y < 0){
	show_debug_message("deleted")
	instance_destroy(self);
	
}


