/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_text(x, y - sprite_height/2, $"HP: {hp}");
draw_text(x, y - sprite_height/1.3, $"ATK: {damage}");
if(player_aggro){
	draw_text(x, y - sprite_height, $"Aggro'd onto player");
} else {
	draw_text(x, y - sprite_height, $"Passive state");
}

if(invincible){
		draw_text(x, y - sprite_height*2, $"Aggro state");
}
