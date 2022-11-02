/// @description Insert description here

//variaveis temporarias
var largura, altura;

largura = irandom_range(20, 1870);
altura = irandom_range(-150, -1500);


instance_create_layer(largura, altura, "inimigos", obj_enemy01);

alarm[0] = 1.8 * room_speed;




