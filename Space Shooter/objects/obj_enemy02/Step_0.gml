/// @description Insert description here

// Inherit the parent event
event_inherited();

//movimentação inimigo 2
if(y > room_height/3 && posso_mover)
{
	if(x > room_width/2)
	{
		hspeed = -3;
		posso_mover = false;
	} 
	else
	{
		hspeed = 3;
		posso_mover = false;
	}
}