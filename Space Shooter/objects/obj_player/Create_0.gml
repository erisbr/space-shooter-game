/// @description Iniciando variáveis

//variaveis
velocidade = 6;
fire_level = 1;
fire_time = room_speed/1.8;
player_life = 3;
shield_number = 3;
my_shield = noone;

//ativando alarme do tiro
alarm[0] = fire_time;

//metodo de atirar
atirando = function()
{
	/*var fire;
	fire = keyboard_check_pressed(vk_space);
	
	if(fire)*/
	
		if(fire_level == 1)
		{
			instance_create_layer(x, y - sprite_height/3, "tiro", obj_tiro01);
		}
		else if(fire_level == 2)
		{
			instance_create_layer(x - 40, (y - sprite_height/3) + 10, "tiro", obj_tiro02);
			instance_create_layer(x + 40, (y - sprite_height/3) + 10, "tiro", obj_tiro02);
			
		}
		else if(fire_level == 3)
		{
			instance_create_layer(x, y - sprite_height/3, "tiro", obj_tiro01);
			instance_create_layer(x - 40, (y - sprite_height/3) + 10, "tiro", obj_tiro01);
			instance_create_layer(x + 40, (y - sprite_height/3) + 10, "tiro", obj_tiro01);
		}
	
}

//metodo power up
power_up = function(chance)
{
	if(chance > 80)
	{
		if(fire_level < 3)
		{
			fire_level++;
		}
		else if(instance_exists(obj_game_controller))
		{
			obj_game_controller.earn_score(50);
		}
	}
	else if(chance > 40)
	{
		if(fire_time > 15)
		{
			fire_time *= 0.9;
		}
		else if(instance_exists(obj_game_controller))
		{
			obj_game_controller.earn_score(25);
		}
	}
	else if(chance < 40)
	{
		if(velocidade < 15)
		{
			velocidade ++;
		}
		else if(instance_exists(obj_game_controller))
		{
			obj_game_controller.earn_score(25);
		}
	}
}

loosing_life = function()
{
	if(!my_shield)
	{
		player_life--;
	}
}