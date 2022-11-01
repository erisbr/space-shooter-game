/// @description Iniciando variáveis

//velocidade do player
velocidade = 6;

//metodo de atirar
atirando = function()
{
	var fire;
	fire = keyboard_check_pressed(vk_space);
	
	if(fire)
	{
		instance_create_layer(x, y - sprite_height/3, "tiro", obj_tiro01);
	}

}




