/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	instance_create_layer(x, y, layer, choose(obj_Banana, obj_Battery, obj_Bottle, obj_Bottle_Glass, obj_Glasses, obj_Cup, obj_Big_Pet, obj_Screw));
	with (instance_create_layer(x, y, layer, obj_EnemyDead))
	{
		direction = other.hitFrom;
		horSpeed = lengthdir_x(3, direction);
		verSpeed = lengthdir_y(3, direction) - 7;
		
		if (sign(horSpeed) != 0) image_xscale = sign(horSpeed) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
}
