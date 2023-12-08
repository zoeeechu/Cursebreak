/// @description Insert description here
// You can write your code in this editor
randomise();

// multiply stats by difficulty selected
max_hp =  100 * obj_config.hp_scale
hp = 100 * obj_config.hp_scale;
damage = 5 * obj_config.atk_scale;

sprite_scale = 1

detection_range = 150; // how far the enemy can detect the player

player_aggro = false; // flag for if enemy is locked onto player
aggro_seconds = 5
aggro_time = aggro_seconds * room_speed;

horizontal_speed = 0;
vertical_speed = 0;
gravity_speed = 0.35;
walk_speed = 5;
movementX = 0;
movementY = 0;
slope_tol = 10

jump_counter = 0;
jump_speed = 10;
grounded = false;
jumped = false;
deltaTime = delta_time/ 1000000;

beenHit = false; // flag for if enemy has been hit by something 
invincible = false;

inKnockback = false; // used to check if enemy is in knockback
knockback_mod = 1; // 1 = no resistance, 0 = knockback immune