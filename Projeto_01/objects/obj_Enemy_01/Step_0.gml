/// @description Insert description here
// You can write your code in this editor

verSpeed += gravSpeed

if (place_meeting(x+horSpeed, y, obj_Wall))
{
	while (!place_meeting(x+sign(horSpeed), y, obj_Wall))
	{
		x += sign(horSpeed);	
	}
	horSpeed = -horSpeed;
}
x += horSpeed;

if (place_meeting(x, y+verSpeed, obj_Wall) and verSpeed >= 0)
{
	while (!place_meeting(x, y+sign(verSpeed), obj_Wall))
	{	
		y += sign(verSpeed);
	}
	verSpeed = -7;
}

else if (place_meeting(x, y+verSpeed, obj_Wall) and verSpeed < 0)
{
	while (!place_meeting(x, y+sign(verSpeed), obj_Wall))
	{	
		y += sign(verSpeed);
	}
	verSpeed = 0;
}
y += verSpeed;

if (!place_meeting(x, y+1, obj_Wall))
{
	sprite_index = spr_Enemy_01_Jumping;
	image_speed = 0;
	
	if (sign(verSpeed) > 0) image_index = 1; else image_index = 0;
}

else
{
	image_speed = 1;	
	sprite_index = spr_Enemy_01;
}

if (horSpeed != 0) image_xscale = sign(horSpeed) * size * -1;
image_yscale = size;