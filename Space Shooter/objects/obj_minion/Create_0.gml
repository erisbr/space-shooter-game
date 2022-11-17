/// @description Insert description here
// You can write your code in this editor

//iniciando o alarme
alarm[0] = room_speed;

image_alpha = 0;

minion_life = 5;

loosing_life = function()
{
	if(minion_life > 0)
	{
		minion_life--;
	}
}