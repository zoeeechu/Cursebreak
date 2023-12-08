/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

// makes sprite follow player	 position 

// flips sprite depending on where mouse is pointing 
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

// auto reloading if out of ammo
if(type == "gun"){
	if(ammo[selected_weapon] == 0 && reload_timer != 0){
		reload_timer -= 1;
		if(reloading == false){
			reloading = true;
		}
	}

// restores ammo once reloading is done
	if(ammo[selected_weapon] != max_ammo && reload_timer == 0){
		ammo[selected_weapon] = max_ammo;
		reload_timer = reload;
		reloading = false;
	}
}

