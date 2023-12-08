/// @description Insert description here
// You can write your code in this editor

//shoot_cd 
//cooldown 
//damage 
//max_ammo 
//ammo_count 
//reload_time 

// pistol 
weapon_list[0] = ds_map_create();
ds_map_add(weapon_list[0], "name", "pistol");
ds_map_add(weapon_list[0], "max_ammo",8);
ds_map_add(weapon_list[0], "cooldown", 10);
ds_map_add(weapon_list[0], "sprite", spr_pistol);
ds_map_add(weapon_list[0], "recoil", 2	);
ds_map_add(weapon_list[0], "damage", 10);
ds_map_add(weapon_list[0], "bullet_speed", 9);
ds_map_add(weapon_list[0], "reload", 30);
ds_map_add(weapon_list[0], "type", "gun");
ds_map_add(weapon_list[0], "active_frames", 0);
ds_map_add(weapon_list[0], "startup_frames", 0);


// rifle
weapon_list[1] = ds_map_create();
ds_map_add(weapon_list[1], "name", "rifle");
ds_map_add(weapon_list[1], "max_ammo",30);
ds_map_add(weapon_list[1], "cooldown", 5);
ds_map_add(weapon_list[1], "sprite", spr_rifle);
ds_map_add(weapon_list[1], "recoil", 1);
ds_map_add(weapon_list[1], "damage", 14);
ds_map_add(weapon_list[1], "bullet_speed", 15);
ds_map_add(weapon_list[1], "reload", 60);
ds_map_add(weapon_list[1], "type", "gun");
ds_map_add(weapon_list[1], "active_frames", 0);
ds_map_add(weapon_list[1], "startup_frames", 0);

// sniper
weapon_list[2] = ds_map_create();
ds_map_add(weapon_list[2], "name", "sniper");
ds_map_add(weapon_list[2], "max_ammo",6);
ds_map_add(weapon_list[2], "cooldown", 100);
ds_map_add(weapon_list[2], "sprite", spr_sniper);
ds_map_add(weapon_list[2], "recoil", 15);
ds_map_add(weapon_list[2], "damage", 100);
ds_map_add(weapon_list[2], "bullet_speed", 50);
ds_map_add(weapon_list[2], "reload", 150);
ds_map_add(weapon_list[2], "type", "gun");
ds_map_add(weapon_list[2], "active_frames", 0);
ds_map_add(weapon_list[2], "startup_frames", 0);


//sword 
weapon_list[3] = ds_map_create();
ds_map_add(weapon_list[3], "name", "sword");
ds_map_add(weapon_list[3], "max_ammo",-1);
ds_map_add(weapon_list[3], "cooldown", 20);
ds_map_add(weapon_list[3], "sprite", spr_sword);
ds_map_add(weapon_list[3], "recoil", -5);
ds_map_add(weapon_list[3], "damage", 25);
ds_map_add(weapon_list[3], "bullet_speed", 0);
ds_map_add(weapon_list[3], "reload", 0);
ds_map_add(weapon_list[3], "type", "melee");
ds_map_add(weapon_list[3], "active_frames", 6);
ds_map_add(weapon_list[3], "startup_frames", 3);


// rocket launcher
weapon_list[4] = ds_map_create();
ds_map_add(weapon_list[4], "name", "rocket launcher");
ds_map_add(weapon_list[4], "max_ammo",5);
ds_map_add(weapon_list[4], "cooldown", 150);
ds_map_add(weapon_list[4], "sprite", spr_sniper);
ds_map_add(weapon_list[4], "recoil", 20);
ds_map_add(weapon_list[4], "damage", 70);
ds_map_add(weapon_list[4], "bullet_speed", 40);
ds_map_add(weapon_list[4], "reload", 200);
ds_map_add(weapon_list[4], "type", "gun");
ds_map_add(weapon_list[4], "active_frames", 9);
ds_map_add(weapon_list[4], "startup_frames", 0);


// laser
weapon_list[5] = ds_map_create();
ds_map_add(weapon_list[5], "name", "railgun");
ds_map_add(weapon_list[5], "max_ammo",3);
ds_map_add(weapon_list[5], "cooldown", 175);
ds_map_add(weapon_list[5], "sprite", spr_sniper);
ds_map_add(weapon_list[5], "recoil", 40);
ds_map_add(weapon_list[5], "damage", 50);
ds_map_add(weapon_list[5], "bullet_speed", 150);
ds_map_add(weapon_list[5], "reload", 200);
ds_map_add(weapon_list[5], "type", "gun");
ds_map_add(weapon_list[5], "active_frames", 0);
ds_map_add(weapon_list[5], "startup_frames", 10);





selected_weapon = 4;

var equipped_weapon = weapon_list[selected_weapon];
name = equipped_weapon[? "name"];
sprite = equipped_weapon[? "sprite"];
max_ammo = equipped_weapon[? "max_ammo"];
recoil = equipped_weapon[? "recoil"];
damage = equipped_weapon[? "damage"];
bullet_speed = equipped_weapon[? "bullet_speed"];
reload = equipped_weapon[? "reload"];
type = equipped_weapon[? "type"];
cooldown = equipped_weapon[? "cooldown"];
active =  equipped_weapon[? "active_frames"];
startup =  equipped_weapon[? "startup_frames"];

// sets all weapons to have max ammo 
ammo[array_length(weapon_list)-1] = equipped_weapon[? "max_ammo"];
for(var i = 0; i < array_length(weapon_list)-1; i++){
	ammo[i] = weapon_list[i][? "max_ammo"];
}

current_cd = 0;
current_active = 0;
isActive = false;
current_startup = 0;
reload_timer = reload;
reloading = false;
sprite_index = sprite;
facingDirection = 0;
image_speed = 0;
