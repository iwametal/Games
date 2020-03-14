/// @description Insert description here
// You can write your code in this editor

if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

var file;

file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_write_real(file, global.trash_value[7])
file_text_write_real(file, global.trash_value[6])
file_text_write_real(file, global.trash_value[5])
file_text_write_real(file, global.trash_value[4])
file_text_write_real(file, global.trash_value[3])
file_text_write_real(file, global.trash_value[2])
file_text_write_real(file, global.trash_value[1])
file_text_write_real(file, global.trash_value[0])
file_text_close(file);

global.trash_value_room[7] = 0;
global.trash_value_room[6] = 0;
global.trash_value_room[5] = 0;
global.trash_value_room[4] = 0;
global.trash_value_room[3] = 0;
global.trash_value_room[2] = 0;
global.trash_value_room[1] = 0;
global.trash_value_room[0] = 0;
