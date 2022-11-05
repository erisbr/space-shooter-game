/// @description Iniciando variáveis

//velocidade do player
velocidade = 6;

//nivel do tiro
fire_level = 1;

//metodo de atirar
atirando = function()
{
	var fire;
	fire = keyboard_check_pressed(vk_space);
	
	if(fire)
	{
		if(fire_level == 1)
		{
			instance_create_layer(x, y - sprite_height/3, "tiro", obj_tiro01);
		}
		else if(fire_level == 2)
		{
			var fire1 = instance_create_layer(x - 40, (y - sprite_height/3) + 10, "tiro", obj_tiro02);
			var fire2 = instance_create_layer(x + 40, (y - sprite_height/3) + 10, "tiro", obj_tiro02);
		}
	}
}