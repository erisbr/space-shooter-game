/// @description 


//variaveis
var up, down, right, left, shield; 

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

shield = keyboard_check_pressed(vk_space);

//movimentação do player
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//criação do escudo
if(shield)
{
	var escudo = instance_create_layer(x, y, "shield", obj_escudo);
	escudo.target = id;
}





