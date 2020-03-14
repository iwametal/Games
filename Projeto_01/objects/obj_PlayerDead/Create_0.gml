/// @description Insert description here
// You can write your code in this editor

horSpeed = 0;
verSpeed = 0;
gravSpeed = 0.2;
done = 0;

image_speed = 0;

ScreenShake(6, 60);

audio_play_sound(soundEnemyDeath, 10, false);
audio_play_sound(soundEnemyDeath, 10, false);
audio_play_sound(soundEnemyDeath, 10, false);

game_set_speed(30, gamespeed_fps);

with (obj_Camera) follow = other.id;
