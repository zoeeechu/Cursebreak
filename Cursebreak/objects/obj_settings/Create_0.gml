/// @description Insert description here
// You can write your code in this editor

// 0 = easy, 1 = normal, 2 = hard, 3 = hell
difficulty_mode = 1;

difficulty_names = ["Easy","Normal","Hard","Hell"];

current_difficulty = difficulty_mode;
difficulty_modifier[0] = ds_map_create();
ds_map_add(difficulty_modifier[0], "atk_scale", 0.5);
ds_map_add(difficulty_modifier[0], "hp_scale", 1);

difficulty_modifier[1] = ds_map_create();
ds_map_add(difficulty_modifier[1], "atk_scale", 1);
ds_map_add(difficulty_modifier[1], "hp_scale", 1);

difficulty_modifier[2] = ds_map_create();
ds_map_add(difficulty_modifier[2], "atk_scale", 1.5);
ds_map_add(difficulty_modifier[2], "hp_scale", 1.5);

difficulty_modifier[3] = ds_map_create();
ds_map_add(difficulty_modifier[3], "atk_scale", 2.5);
ds_map_add(difficulty_modifier[3], "hp_scale", 2.5);

atk_scale = difficulty_modifier[difficulty_mode][? "atk_scale"]
hp_scale = difficulty_modifier[difficulty_mode][? "hp_scale"]

difficulty_description = $"All enemies Atk: {atk_scale}x\nAll enemies HP: {hp_scale}x";
