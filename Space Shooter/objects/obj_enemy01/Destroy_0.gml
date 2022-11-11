/// @description 

//instanciando explosão ao ser destruido
instance_create_layer(x, y, "inimigos", obj_explosao);

//instanciando o screen shake ao ser destruido
screen_shake(10);

//ganhando pontos ao ser destruido
if(instance_exists(obj_game_controller))
{
	obj_game_controller.earn_score(pontos);
}

//dropando item ao ser destruido
item_drop(chance);



