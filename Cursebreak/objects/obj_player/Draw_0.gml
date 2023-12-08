/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_text(x, y - sprite_height/1.3, $"HP: {hp}");
draw_text(x, y - sprite_height * 1.1, $"Recovery Gauge: {recoveryGauge}");
if(keyboard_check(ord("1")) || keyboard_check(ord("2")) || keyboard_check(ord("3")) || keyboard_check(ord("4")) || keyboard_check(ord("5")) || keyboard_check(ord("6"))){
	draw_text(x, y - sprite_height, $"changed to {obj_weapon.name}");
}

if(obj_weapon.reloading){
	draw_text(x, y - sprite_height/2, $"reloading {obj_weapon.name}");
}

if(obj_weapon.current_cd > 0){
	draw_text(x, y - sprite_height*2, $"{obj_weapon.name} cooldown");
}
