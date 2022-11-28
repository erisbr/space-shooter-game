/// @description

// Inherit the parent event
event_inherited();

//variaveis
pontos = 20;
chance = 30;

//variavel de controle da movimentação
posso_mover = true;

//funcao de atirar
enemy_fire = function()
{
	if(y > 0)
	{
		instance_create_layer(x, y + sprite_height/3, "tiro", obj_tiro_inimigo02);
		audio_play_sound(sfx_enemy_shoot, 1, false);
	}
	
	alarm [0] = room_speed * random_range(1,3);
}