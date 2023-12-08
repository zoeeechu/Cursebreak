/// @description Insert description here
// You can write your code in this editor
if(!other.beenHit && !other.invincible){
	if(place_meeting(x,y,other)){
		other.hp -= damage;
		show_debug_message(other.hp)
		other.beenHit = true;
	}
}
