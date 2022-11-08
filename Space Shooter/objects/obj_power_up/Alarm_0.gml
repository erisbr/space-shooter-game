/// @description Se destruindo sozinho
// You can write your code in this editor

image_alpha -= 0.2;

if(image_alpha <=0)
{
	instance_destroy(id, false);
}

alarm[0] = room_speed/2;


