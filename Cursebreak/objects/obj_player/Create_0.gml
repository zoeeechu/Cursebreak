/// @description Insert description here
// You can write your code in this editor

/// @description variables
max_hp = 100;
hp = max_hp;

horizontal_speed = 0;
vertical_speed = 0;
gravity_speed = 0.35;

walk_speed = 12; 
jump_speed = 12;
slope_tol = 15
hascontrol = true;

recoveryGaugeMax = 100;
recoveryGauge = 0;

dash_modifier = 2;
dashed = false;
dash_time = 7;
dash_count = 0;
dash_speed = walk_speed * dash_modifier;
dash_cd = 20;
dash_cd_counter = 0;

grounded = false;
jumped = false;

jump_buffer = 6;
jump_counter = 0;

fall_speed = 0;

facingDirection = 0;

invincible = false;

beenHit = false;


