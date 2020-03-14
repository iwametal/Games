/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5
image_yscale = 1.5

if (hascontrol)
{
	//Input variables - Capture keyboards;
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//Calculate movements
//Everytime is writed the word "var" to create a variable, it means that variable is temporary;
var move = key_right - key_left;

horSpeed = move * walkSpeed;

verSpeed += gravSpeed;

if (place_meeting(x, y+1, obj_Wall)) && (key_jump)
{
	verSpeed = -8;
}


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
	while (!place_meeting(x, y+sign(verSpeed), obj_Wall))
	{
		y += sign(verSpeed);
	}
	verSpeed = 0;
}
y += verSpeed;

//Animation
if (!place_meeting(x, y+1, obj_Wall))
{
	sprite_index = spr_PlayerJumping;
	image_speed = 0;
	
	if (sign(verSpeed) > 0) image_index = 1; else image_index = 0;
}
else
{
	if (sprite_index == spr_PlayerJumping) audio_play_sound(soundLanding, 4, false);
	
	image_speed = 1;
	
	if (horSpeed == 0)
	{
		sprite_index = spr_Player;
	}
	
	else
	{
		sprite_index = spr_PlayerRunning;
	}
}

if (horSpeed != 0) image_xscale = sign(horSpeed)*1.5;
