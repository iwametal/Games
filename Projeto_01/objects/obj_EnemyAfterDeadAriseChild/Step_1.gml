/// @description Insert description here
// You can write your code in this editor

if (image_index >= 31)
{
	instance_create_layer(x, y, "Enemy_After_Dead", obj_EnemyAfterDeadColectingChild);
	instance_destroy();
}
