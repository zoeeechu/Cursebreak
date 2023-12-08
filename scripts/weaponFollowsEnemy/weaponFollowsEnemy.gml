// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weaponFollowEnemy(argument0, argument1){
	argument0.x = argument1.x
	argument0.y = argument1.y
	if(argument1.player_aggro && instance_exists(obj_player)){
	argument0.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	}
}