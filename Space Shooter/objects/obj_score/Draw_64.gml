/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score_screen);

draw_text(350, 150, "HighScore: " + string(global.high_score));
draw_text(350, 200, "Death Number : " + string(global.death_number));
draw_text(350, 250, "Enemy Killed : " + string(global.kill_number));

draw_set_font(-1);





