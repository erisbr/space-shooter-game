/// @description Insert description here
// You can write your code in this editor

image_alpha += 1/room_speed;

if(minion_life <=0)
{
	instance_destroy();
}

if(scale >= 1.3 || scale <=0.9)
{
	aumento_escala *= -1;
}

scale += aumento_escala;