/// @description

// Inherit the parent event
event_inherited();

//variavel de controle da movimentação
posso_mover = true;

//funcao de atirar
enemy_fire = function()
{
	if(y > 0)
	{
	instance_create_layer(x, y + sprite_height/3, "tiro", obj_tiro_inimigo02);
	}
}