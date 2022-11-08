/// @description Iniciando o power up

//variaveis
chance = random_range(1, 100);

//movimentação
speed = 0.8;
direction = irandom(359);

//iniciando alarmes
alarm[0] = room_speed * 3;

//coloração de acordo com a chance
if(chance > 80)
{
	cor = c_red;
}
else if(chance > 40)
{
	cor = c_blue;
}
else
{
	cor = c_green;
}

