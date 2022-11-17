/// @description Insert description here
// You can write your code in this editor

//variaveis
var altura_gui, largura_gui, life;

altura_gui = display_get_gui_height();
largura_gui = display_get_gui_width();

life = (boss_life / boss_life_max) * 100;

//desenhando a vida do boss
draw_healthbar(180, altura_gui - 25, largura_gui - 180, altura_gui - 15, life, c_black, c_red, c_red, 0, true, true);




