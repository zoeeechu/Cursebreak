/// @description Insert description here
// You can write your code in this editor
obj_settings.difficulty_mode += arrow_direction
obj_settings.difficulty_mode =  clamp(obj_settings.difficulty_mode,0,array_length(obj_settings.difficulty_names) - 1)
obj_difficulty_button.text = obj_settings.difficulty_names[obj_settings.difficulty_mode]
