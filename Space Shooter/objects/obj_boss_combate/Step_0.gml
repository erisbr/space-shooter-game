/// @description Insert description here
// You can write your code in this editor

boss_state_time--;

if(boss_state_time <= 0)
{
	boss_state = choose("state 1", "state 2", "state 3");
	
	boss_state_time = boss_state_delay;
}

if(boss_life == boss_life_max/2)
{
	boss_state = "state 4";
}

if(boss_state != "state 4")
{
	sprite_index = spr_boss_combate;
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
	
	boss_fire_time--;
	x += boss_xspeed;
	
	if(x >= 1630 || x<= 288)
	{
		boss_xspeed *= -1;
	}
	
	if(boss_fire_time <=0)
	{
		instance_create_layer(x, y + 90, "tiro", obj_tiro_inimigo02);
		//instance_create_layer(x - 160, y + 20, "tiro", obj_tiro_inimigo01);
		//instance_create_layer(x + 160, y + 20, "tiro", obj_tiro_inimigo01);
		
		boss_fire_time = boss_fire_delay * 2;
	}
}
else if(boss_state == "state 4")
{
	sprite_index = spr_boss_escuro;
}

if(boss_life <=0)
{
	instance_destroy();
}