/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,enemy_parent)){
	other.hp -= obj_weapon.damage;
	other.beenHit = true;
	show_debug_message(other.hp)
	instance_destroy(self);
}

