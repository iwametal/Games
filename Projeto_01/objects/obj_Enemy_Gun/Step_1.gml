/// @description Insert description here
// You can write your code in this editor

x = owner.x;
y = owner.y-10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(obj_Player))
{
	if (obj_Player.x < x) image_yscale *= -1;
	if (point_distance(obj_Player.x, obj_Player.y, x, y) < 600)
	{
		image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
		countdown--;
		if (countdown <= 0)
		{	
			countdown = countdownrate;
			
			audio_sound_pitch(soundGun, choose(0.8, 1.0, 1.2));
			audio_play_sound(soundGun, 5, false);
	
			with (instance_create_layer(x, y, "Bullets", obj_Enemy_Bullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-3, 3);
				image_angle = direction;
			}
		}
	}
}