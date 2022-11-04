/// @description 


//variaveis
var up, down, right, left; 

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

//movimentação do player
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//mecanica de tiro
atirando();


if(keyboard_check_pressed(vk_up) && fire_level < 5)
{
	fire_level++;
}

if(keyboard_check_pressed(vk_down) && fire_level > 1)
{
	fire_level--;
}

show_debug_message(fire_level);


