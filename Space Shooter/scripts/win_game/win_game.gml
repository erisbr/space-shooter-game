// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function win_game()
{
	obj_game_controller.gameover = true;
	layer_sequence_create("player", obj_player.x, obj_player.y, sq_win_game);
	instance_destroy(obj_player, false);
	
	var elemento = layer_get_all_elements("BossMorte");
	layer_sequence_destroy(elemento[0]);
	
}

function destroy_win_game()
{
	var elemento = layer_get_all_elements("Player");
	layer_sequence_destroy(elemento[0]);
}