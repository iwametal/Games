/// @description Insert description here
// You can write your code in this editor

x = spr_Player.x-3;
y = spr_Player.y+5;

image_angle = point_direction (x, y, mouse_x, mouse_y);

firingDelay -= 1;
recoil = max(0, recoil-1);

if (bullet < 1)
{
	reload = true;
	audio_play_sound(soundReloadGun01, 5, false);
	audio_play_sound(soundReloadGun02, 5, false);
}
if (bullet > shot) reload = false;

if (reload == false)
{
	if (mouse_check_button(mb_left)) && (firingDelay < 0)
	{
		recoil = 4;
		firingDelay = 5;
		bullet -= bulletPerShot;
	
		audio_sound_pitch(soundGun, choose(0.8, 1.0, 1.2));
		audio_play_sound(soundGun, 5, false);
	
		with (instance_create_layer(x, y, "Bullets", obj_Bullet))
		{
			speed = 25;
			direction = other.image_angle + random_range(-3, 3);
			image_angle = direction;
		}
	}
}

if (reload == true)
{
	bullet += reloadSpeed;
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
