/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	instance_destroy();
	instance_create_layer(x-992, y-4, layer, obj_Enemy_Menu_Next);
}
