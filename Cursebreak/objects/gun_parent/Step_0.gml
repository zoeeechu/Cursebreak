/// @description Insert description here
// You can write your code in this editor

x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(image_angle >= 90 && image_angle <= 270){
	image_yscale = -1
	facingDirection = -1
} else {
	image_yscale = 1;
	facingDirection = 1;
}

// counts down cooldown
if(current_cd > 0){
	current_cd -= 1;
}

if(current_active > 0){
	current_active -= 1;
	isActive = true;
}

if(type == "gun"){
if(ammo[selected_weapon] == 0 && reload_timer != 0){
	reload_timer -= 1;
	show_debug_message($"reload: {reload_timer}")
	if(reloading == false){
		reloading = true;
	}
	
}

if(ammo[selected_weapon] != max_ammo && reload_timer == 0){
ammo[selected_weapon] = max_ammo;
reload_timer = reload;
reloading = false;
show_debug_message("done reloading")
}
}
