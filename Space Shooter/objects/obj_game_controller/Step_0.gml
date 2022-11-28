/// @description Insert description here
// You can write your code in this editor

//variaveis
var restart = keyboard_check_pressed(vk_enter);

//ativando a tela de game over ao morrer
if(!instance_exists(obj_player) && !gameover)
{
	gameover = layer_sequence_create("sequences", room_width/2, room_height/2, sq_game_over);
}

//reiniciando o jogo
if(gameover && restart)
{
	room_goto(rm_main_menu);
}

if(player_score > global.high_score)
{
	global.high_score = player_score;
}