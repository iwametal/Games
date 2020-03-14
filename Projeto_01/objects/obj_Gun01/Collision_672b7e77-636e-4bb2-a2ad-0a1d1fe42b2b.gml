/// @description Insert description here
// You can write your code in this editor

audio_play_sound(soundPickGun01, 5, false);
audio_play_sound(soundPickGun02, 5, false);

instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_Gun);

instance_destroy();
