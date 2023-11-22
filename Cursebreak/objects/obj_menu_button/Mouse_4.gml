/// @description Insert description here
// You can write your code in this editor


if(position_meeting(mouse_x, mouse_y, self)){
	if(room == Difficulty_screen){
		ChangeDifficulty();
	}
	room_goto(targetRm)
	show_debug_message($"Difficulty: {obj_settings.difficulty_names[obj_settings.difficulty_mode]}")
	show_debug_message($"Atk scale: {obj_settings.atk_scale} || Hp scale: {obj_settings.hp_scale}")
}	