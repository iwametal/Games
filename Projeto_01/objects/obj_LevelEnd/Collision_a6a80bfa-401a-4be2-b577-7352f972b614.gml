/// @description Insert description here
// You can write your code in this editor

with (obj_Player)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target);
	}
}