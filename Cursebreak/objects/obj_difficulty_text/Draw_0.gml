/// @description Insert description here
// You can write your code in this editor
text = $"Current difficulty: {obj_settings.difficulty_names[obj_settings.current_difficulty]}"

draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_transformed(x,y,text,2,2,0);
