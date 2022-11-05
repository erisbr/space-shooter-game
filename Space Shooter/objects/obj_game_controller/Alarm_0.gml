/// @description Insert description here

//criando inimigos
if(!instance_exists(obj_enemy01))
{
	repeat(7 * level)
	{
		create_enemy();
	}
}

//reativando o alarme
alarm[0] = 2 * room_speed;




