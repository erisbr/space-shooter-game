/// @description Insert description here
// You can write your code in this editor

//iniciando estados do boss

//variaveis
boss_state = choose("state 1", "state 2", "state 3");
boss_state_delay = room_speed * 10;
boss_state_time = boss_state_delay;

boss_fire_delay = room_speed/2;
boss_fire_time = 0;

boss_xspeed = 4;

boss_life_max = 1;
boss_life = boss_life_max;

can_create_minion = true;

//metodo para perder vida
loosing_life = function()
{
		boss_life--;
}
