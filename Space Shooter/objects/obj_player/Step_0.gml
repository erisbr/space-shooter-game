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



