/// @description Insert description here
// You can write your code in this editor

if (hasWeapon)
{
	myGun = instance_create_layer(x, y, "Gun", obj_Enemy_Gun);
	with (myGun)
	{
		owner = other.id;
	}
}
else
{
	myGun = noone;
}
