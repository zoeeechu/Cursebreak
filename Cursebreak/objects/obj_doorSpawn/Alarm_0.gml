/// @description Insert description here
// You can write your code in this editor
switch(incomingDirection){
	case 1:
	if(obj_player.x > x + sprite_width){
	with instance_create_layer(x,y,"Instances",obj_door){
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale
	}
	obj_doorSpawn.lockAll = true
	instance_destroy(self)
	}
	break;
	case 0:
	if(obj_player.x < x){
	with instance_create_layer(x,y,"Instances",obj_door){
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale
	}
	obj_doorSpawn.lockAll = true
	instance_destroy(self)
	}
}