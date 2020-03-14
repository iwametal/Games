/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	instance_create_layer(x, y, layer, obj_Enemy_01_Dead);
	instance_create_layer(x, y, "Trash_Collect", choose(obj_Banana, obj_Battery, obj_Bottle, obj_Bottle_Glass, obj_Glasses, obj_Cup, obj_Big_Pet, obj_Screw));
	instance_create_layer(x, y, "Enemy_After_Dead", obj_EnemyAfterDeadAriseChild);
	instance_destroy();
}
