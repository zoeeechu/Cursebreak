/// @description Insert description here
// You can write your code in this editor

if(!paused){
instance_deactivate_all(true);
paused = !paused;

} else if (paused){
	instance_activate_all();
	paused = !paused;
}