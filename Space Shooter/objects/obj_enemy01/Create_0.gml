/// @description Iniciando o inimgo

//variaveis
vspeed = 2;

//iniciando alarmes
alarm[0] = random_range(1,3) * room_speed;

//metodo de atirar do inimigo
enemy_fire = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 3,y + sprite_height /3, "tiro", obj_tiro_inimigo01);
	}
	
	alarm [0] = room_speed * random_range(1,3);

}


