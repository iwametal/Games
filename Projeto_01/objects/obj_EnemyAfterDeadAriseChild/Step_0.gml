/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x, y+collision_test, obj_Wall))
{
	while (!place_meeting(x, y+collision_test, obj_Wall))
	{
		collision_test += 1;
	}
}
else if (place_meeting(x, y+collision_test, obj_Wall))
{
	while (place_meeting(x, y+collision_test, obj_Wall))
	{
		collision_test -= 1;
	}
}
y += collision_test;
collision_test = 0;
