/// @description Insert description here
// You can write your code in this editor

myWall = instance_create_layer(x, y, layer, obj_Wall);

with (myWall)
{
	image_xscale = other.sprite_width / sprite_width - 0.5;
	image_yscale = other.sprite_height / sprite_height - 0.5;
}
