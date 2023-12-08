// replaces current weapon stats with the new weapon stats when switched
function WeaponSwitch(argument0, argument1){
with(argument0){ // player or enemy weapon obj
selected_weapon = argument1; 
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
reload_timer = reload;
}
}