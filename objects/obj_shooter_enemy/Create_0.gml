/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
detection_range = 300
initialWeapon = 1
with instance_create_layer(x,y,"Instances",obj_enemy_weapon){
other.weaponID = id;
WeaponSwitch(other.weaponID,other.initialWeapon);
}