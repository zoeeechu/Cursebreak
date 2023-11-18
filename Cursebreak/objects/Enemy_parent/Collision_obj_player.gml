/// @description Insert description here
// You can write your code in this editor
if(!other.invincible){
if(place_meeting(x,y,other)){
other.healthpoints -= damage;
show_debug_message(other.healthpoints)
other.invincible = true;
}
}
