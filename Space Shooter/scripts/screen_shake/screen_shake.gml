// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_shake(force)
{
	var screenShake = instance_create_layer(0, 0, "inimigos", obj_shake_screen);
	screenShake.shake = force;
}