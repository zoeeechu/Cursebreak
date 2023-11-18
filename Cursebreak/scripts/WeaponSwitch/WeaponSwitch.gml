with(obj_weapon){
selected_weapon = argument0;
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

sprite_index = sprite;
ammo[selected_weapon] = ammo[selected_weapon];
}