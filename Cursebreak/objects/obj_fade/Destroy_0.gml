/// @description Insert description here
// You can write your code in this editor


if(instance_exists(obj_player)){
	obj_player.hascontrol = true
	obj_player.x = targetX
	obj_player.y = targetY
	obj_player.horizontal_speed = 0
	obj_player.vertical_speed = 0;
	show_debug_message(obj_player.x)
}