/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	weaponFollowEnemy(weaponID,self);
image_angle = point_direction(x,y,obj_player.x,obj_player.y);
//if player in in a range around enemy and wall is not in between them
if(distance_to_object(obj_player) < detection_range && collision_line(x,y,obj_player.x, obj_player.y,obj_wall,false,true) == noone){
	player_aggro = true;
	aggro_time = room_speed * aggro_seconds;
}
if(player_aggro){
if(collision_line(x,y,obj_player.x, obj_player.y,obj_wall,false,true) == noone){
		FireGun(weaponID,id);
}
}
}