/// @description Insert description here
// You can write your code in this editor

show_debug_message(boss_state);

boss_state_time--;
if(boss_state_time <= 0)
{
	boss_state = choose("state 1", "state 2", "state 3");
	
	boss_state_time = boss_state_delay;
}

if(boss_state == "state 1")
{
	boss_fire_time--;
	
	if(boss_fire_time <=0)
	{
		instance_create_layer(x, y + 90, "tiro", obj_tiro_inimigo02);
		
		boss_fire_time = boss_fire_delay;
	}
		
}
else if(boss_state == "state 2")
{
	x += boss_xspeed;
	
	if(x >= 1630 || x<= 288)
	{
		boss_xspeed *= -1;
	}
	
	boss_fire_time--;
	
	if(boss_fire_time <=0)
	{
		instance_create_layer(x - 160, y + 20, "tiro", obj_tiro_inimigo01);
		instance_create_layer(x + 160, y + 20, "tiro", obj_tiro_inimigo01);
		
		boss_fire_time = boss_fire_delay * 1.5;
	}
}
else if(boss_state == "state 3")
{
	
}


