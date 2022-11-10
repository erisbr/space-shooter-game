/// @description Insert description here
// You can write your code in this editor


//variaveis
var altura_gui = display_get_gui_height();
var space = 40;
var multiplier = 0;

repeat(player_life)
{
	draw_sprite_ext(spr_player, 0, 30 + space * multiplier, altura_gui - 30, 0.3, 0.3, 0, c_white, 0.7);
	multiplier++;
}
