/// @description Insert description here
// You can write your code in this editor


if(position_meeting(mouse_x, mouse_y, self)){
	if(room == Difficulty_screen){
		ChangeDifficulty();
	}
	room_goto(targetRm)
	show_debug_message($"Difficulty: {obj_config.difficulty_names[obj_config.difficulty_mode]}")
	show_debug_message($"Atk scale: {obj_config.atk_scale} || Hp scale: {obj_config.hp_scale}")
}	