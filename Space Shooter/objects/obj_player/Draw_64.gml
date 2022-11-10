/// @description Insert description here
// You can write your code in this editor


//variaveis
var altura_gui, largura_gui, space, multiplier;

altura_gui = display_get_gui_height();
largura_gui = display_get_gui_width();

space = 40;
multiplier = 0;

//desenhando vidas
repeat(player_life)
{
	draw_sprite_ext(spr_player, 0, 30 + space * multiplier, altura_gui - 25, 0.2, 0.2, 0, c_white, 0.7);
	multiplier++;
}

//desenhando escudos
multiplier = 0;
repeat(shield_number)
{
	draw_sprite_ext(spr_escudo, 2, 30 + space * multiplier, altura_gui - 60, 0.2, 0.2, 0, c_white, 0.7);
	multiplier++;

}
