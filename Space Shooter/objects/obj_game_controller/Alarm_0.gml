/// @description Insert description here

//criando inimigos
if(!instance_exists(obj_enemy01))
{
	repeat(10 * level)
	{
		create_enemy();
	}
}

//reativando o alarme
alarm[0] = 1.5 * room_speed;




