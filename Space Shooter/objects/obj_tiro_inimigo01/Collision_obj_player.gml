/// @description Colisão com o player
// You can write your code in this editor

instance_destroy();

obj_player.loosing_life();

screen_shake(5);

audio_play_sound(sfx_dano, 1, false);