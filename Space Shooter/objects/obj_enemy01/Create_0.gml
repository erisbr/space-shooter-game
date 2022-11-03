/// @description Iniciando o inimgo

//variaveis
vspeed = 2;
pontos = 10;

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

//destruindo o inimigo se já tiver outro no mesmo lugar
if(place_meeting(x, y, obj_enemy01))
{
	instance_destroy(id, false);
}


