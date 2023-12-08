/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
if(place_meeting(x,y,obj_player) && obj_player.invincible == false){
	other.hp -= obj_enemy_weapon.damage;
	other.beenHit = true;
	show_debug_message(other.hp)
	instance_destroy(self);
}
}
