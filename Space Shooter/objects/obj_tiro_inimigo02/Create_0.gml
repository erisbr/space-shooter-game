/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//velocidade do tiro
speed = 6;

//direção do tiro
if(instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}

image_angle = direction + 90;