/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_Shootable))
{
	with (instance_place(x, y, obj_Shootable))
	{
		hp--;
		flash = 3;
		hitFrom = other.direction;
	}
	instance_destroy();
}
