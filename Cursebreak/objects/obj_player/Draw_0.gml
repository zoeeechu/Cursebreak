/// @description Insert description here
// You can write your code in this editor
draw_self();

if(keyboard_check(ord("1")) || keyboard_check(ord("2")) || keyboard_check(ord("3")) || keyboard_check(ord("4")) || keyboard_check(ord("5")) || keyboard_check(ord("6"))){
	draw_text(x - sprite_width/2, y - sprite_height, $"changed to {obj_weapon.name}");
}
if(obj_weapon.reloading){
	draw_text(x - sprite_width/2, y - sprite_height*2, $"reloading {obj_weapon.name}");
}
if(obj_weapon.current_cd > 0){
	draw_text(x - sprite_width/2, y - sprite_height*2.5, $"{obj_weapon.name} cooldown");
}
