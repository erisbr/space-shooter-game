/// @description 

//instanciando explosão ao ser destruido
instance_create_layer(x, y, "inimigos", obj_explosao);

//instanciando o screen shake ao ser destruido
instance_create_layer(0,0,"inimigos", obj_shake_screen);

//ganhando pontos ao ser destruido
if(instance_exists(obj_game_controller))
{
	obj_game_controller.earn_score(pontos);
}

//dropando item ao ser destruido
item_drop(chance);



