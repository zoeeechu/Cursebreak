/// @description Insert description here
// You can write your code in this editor

active_time = obj_weapon.active;

ended = false;
knockbackType = 0;

if(obj_weapon.type == "gun"){
	knockbackType = 1;
} else{
	knockbackType = -1;
}