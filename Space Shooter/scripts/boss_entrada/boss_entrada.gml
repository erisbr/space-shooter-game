// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_entrada()
{
	var elemento = layer_get_all_elements("BossEntrada");
	layer_sequence_destroy(elemento[0]);
	
	instance_create_layer(960, 256, "boss", obj_boss_combate);
}