
randomize();

//iniciando o alarme
alarm[0] = 1.4 * room_speed;

//iniciando variaveis
player_score = 0;
level = 6;
next_level = 100;
gameover = noone;
boss_create = true;

//sistema de pontuação
earn_score = function(s)
{
	player_score += s;
	
	if(player_score >= next_level)
	{
		level++;
		next_level *= 2;
		
	}
}

//cirando inimigos de forma procedural
create_enemy = function()
{
	var largura, altura;
	var enemy, chance;

	largura = irandom_range(80, 1800);
	altura = irandom_range(-150, -1800 - (level * 600));

	enemy = obj_enemy01;
	chance = random_range(0, level);

	if(chance >= 2)
	{
		enemy = obj_enemy02;
	}

	instance_create_layer(largura, altura, "inimigos", enemy);
}
