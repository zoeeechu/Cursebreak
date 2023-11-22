/// @description Insert description here
// You can write your code in this editor

text = $"All enemies Atk: {obj_settings.difficulty_modifier[obj_settings.difficulty_mode][? "atk_scale"]}x\nAll enemies Hp: {obj_settings.difficulty_modifier[obj_settings.difficulty_mode][? "hp_scale"]}x"
draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_transformed(x,y,text,3,3,0);
