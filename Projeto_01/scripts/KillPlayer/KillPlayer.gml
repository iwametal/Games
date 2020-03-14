with (obj_Gun) instance_destroy();
with (obj_Strap) instance_destroy();

instance_change(obj_PlayerDead, true);

direction = point_direction(other.x, other.y, x, y);

horSpeed = lengthdir_x(6, direction);
verSpeed = lengthdir_y(4, direction)-2;

if (sign(horSpeed) != 0) image_xscale = sign(horSpeed) * -1.5;

global.trash_value[7] -= global.trash_value_room[7];
global.trash_value[6] -= global.trash_value_room[6];
global.trash_value[5] -= global.trash_value_room[5];
global.trash_value[4] -= global.trash_value_room[4];
global.trash_value[3] -= global.trash_value_room[3];
global.trash_value[2] -= global.trash_value_room[2];
global.trash_value[1] -= global.trash_value_room[1];
global.trash_value[0] -= global.trash_value_room[0];
