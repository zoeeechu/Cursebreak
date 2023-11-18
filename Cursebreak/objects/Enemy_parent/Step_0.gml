/// @description Insert description here
// You can write your code in this editor

if(hp <= 0){
	show_debug_message("enemy killed");
	instance_destroy();
}

direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 2;