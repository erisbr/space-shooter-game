/// @description Insert description here
// You can write your code in this editor

//iniciando o alarme
alarm[0] = room_speed;

//variaveis
image_alpha = 0;
minion_life = 1;
scale = 1;
aumento_escala = 0.04;

//metodos
loosing_life = function()
{
	if(minion_life > 0)
	{
		minion_life--;
	}
}

if(place_meeting(x, y, obj_minion))
{
	y -= 60;
}