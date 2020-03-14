/// @description Insert description here
// You can write your code in this editor

if (done == 0)
{
	//Calculate movements
	verSpeed += gravSpeed;

	//Horizontal Collision
	if (place_meeting(x+horSpeed, y, obj_Wall))
	{
		while (!place_meeting(x+sign(horSpeed), y, obj_Wall))
		{
			x += sign(horSpeed);
		}
		horSpeed = 0;
	}
	x += horSpeed;

	//Vertical Collision
	if (place_meeting(x, y+verSpeed, obj_Wall))
	{
		if (verSpeed > 0)
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
	
		while (!place_meeting(x, y+sign(verSpeed), obj_Wall))
		{
			y += sign(verSpeed);
		}
		verSpeed = 0;
	}
	y += verSpeed;
}