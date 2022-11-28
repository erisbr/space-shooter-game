/// @description Insert description here
// You can write your code in this editor

//instanciando a animação de morte ao ser destruído
layer_sequence_create("BossMorte", obj_boss_combate.x, obj_boss_combate.y, sq_boss_dying);


if(instance_exists(obj_game_controller))
{
	obj_game_controller.earn_score(pontos);
}



