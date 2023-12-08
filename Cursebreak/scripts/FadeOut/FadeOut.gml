// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FadeOut(){
	var alpha = 1;
	while(alpha > 0){
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width, room_height,false);
	draw_set_alpha(alpha);
	alpha -= 0.05
	}
}