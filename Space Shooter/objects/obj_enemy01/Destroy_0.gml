/// @description 

//instanciando explosão ao ser destruido
instance_create_layer(x, y, "inimigos", obj_explosao);

//ganhando pontos ao ser destruido
if(instance_exists(obj_game_controller))
{
	obj_game_controller.earn_score(pontos);
}





