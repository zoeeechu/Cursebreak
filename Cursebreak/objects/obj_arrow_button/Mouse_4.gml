/// @description Insert description here
// You can write your code in this editor
obj_config.difficulty_mode += arrow_direction
obj_config.difficulty_mode =  clamp(obj_config.difficulty_mode,0,array_length(obj_config.difficulty_names) - 1)
obj_difficulty_button.text = obj_config.difficulty_names[obj_config.difficulty_mode]
