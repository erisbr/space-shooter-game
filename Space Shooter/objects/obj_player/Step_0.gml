/// @description 


//variaveis
var up, down, right, left; 
var fire;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

fire = keyboard_check_pressed(vk_space);

//movimentação do player
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//instanciando o tiro
if(fire)
{
	instance_create_layer(x, y - sprite_height/3, "tiro", obj_tiro01);
}


