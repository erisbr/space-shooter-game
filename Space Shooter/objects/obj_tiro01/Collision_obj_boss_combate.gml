/// @description Insert description here
// You can write your code in this editor

if(obj_boss_combate.boss_state != "state 4")
{
	instance_destroy();

	obj_boss_combate.loosing_life();

	screen_shake(7);
}