/// @description Insert description here

//criando inimigos
if(!instance_exists(obj_enemy01))
{
	
	if(level <6)
	{
		repeat(10 * level)
		{
			create_enemy();
		}
	}
	else if (level == 6 && boss_create)
	{
		layer_sequence_create("BossEntrada", 960, 512, sq_boss_entrada);
		boss_create = false;
		audio_stop_sound(snd_level1);
		audio_play_sound(snd_boss_fight, 0, true);
	}
}

//reativando o alarme
alarm[0] = 1.5 * room_speed;




