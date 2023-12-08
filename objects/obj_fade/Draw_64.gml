/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
if(!instance_exists(obj_player)){
draw_text_transformed(view_wport/2,view_hport/2,"GAME OVER",10,10,0)
	}