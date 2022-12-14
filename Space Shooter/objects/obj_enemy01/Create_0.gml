/// @description Iniciando o inimgo

//variaveis
vspeed = 2;
pontos = 10;
chance = 20;

//iniciando alarmes
alarm[0] = random_range(1,3) * room_speed;

//metodo de atirar do inimigo
enemy_fire = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 3,y + sprite_height /3, "tiro", obj_tiro_inimigo01);
		audio_play_sound(sfx_enemy_shoot, 1, false);
	}
	
	alarm [0] = room_speed * random_range(1,3);

}

//destruindo o inimigo se já tiver outro no mesmo lugar
if(place_meeting(x, y, obj_enemy01))
{
	instance_destroy(id, false);
}

//metodo para dropar itens
item_drop = function(chance)
{
	var valor = random(100);
	if(valor <= chance && y > 50)
	{
		instance_create_layer(x, y, "tiro", obj_power_up);	
	}
}
