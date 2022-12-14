/// @description 


//variaveis
var up, down, right, left, shield; 

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

shield = keyboard_check_pressed(vk_space);

//mantendo o player dentro da tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//movimentação do player
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//criação do escudo
if(shield && shield_number > 0 && !my_shield)
{
	var escudo = instance_create_layer(x, y, "shield", obj_escudo);
	escudo.target = id;
	
	my_shield = escudo;
	shield_number --;
}

//se destruindo ao perder todas as vidas
if(player_life <= 0)
{
	instance_destroy();
}