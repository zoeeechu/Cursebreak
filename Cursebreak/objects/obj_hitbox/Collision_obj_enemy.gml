/// @description Insert description here
// You can write your code in this editor


if(other.invincible == false){
	other.hp -= obj_weapon.damage;
	show_debug_message(other.hp);
	other.beenHit = true;
	other.invincible = true;
	other.inKnockback = true;
	
	// knocks enemy back
	if(obj_weapon.image_angle >= 230 && obj_weapon.image_angle <= 330){
		other.vertical_speed -= obj_weapon.recoil * knockbackType* 0.75 * other.knockback_mod
			
	} else if(obj_weapon.image_angle <= 150 && obj_weapon.image_angle >= 10){
		other.vertical_speed -= obj_weapon.recoil * knockbackType * 0.75 * other.knockback_mod
	}
	if(obj_weapon.image_angle <= 80 || obj_weapon.image_angle >= 280){
		other.horizontal_speed += obj_weapon.recoil * knockbackType* other.knockback_mod
				
	} else if(obj_weapon.image_angle >= 100 && obj_weapon.image_angle <= 260){
		other.horizontal_speed -= obj_weapon.recoil * knockbackType* other.knockback_mod
	}
}