/// @description Insert description here
// You can write your code in this editor

//Main speed variables - Horizontal, Vertical, Gravity and Walk;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 565;

trash_x = gui_width - 750;
trash_y = gui_height - gui_margin;
trash_item_height = font_get_size(fData);

trash[7] = "BANANAS: ";
trash[6] = "BATTERIES: ";
trash[5] = "BOTTLES: ";
trash[4] = "BOTTLE GLASSES: ";
trash[3] = "GLASSES: ";
trash[2] = "CUPS: ";
trash[1] = "BIG PETS: ";
trash[0] = "SCREWS: ";

trash_items = array_length_1d(trash);

horSpeed = 0;
verSpeed = 0;
gravSpeed = 0.3;
walkSpeed = 4;
hascontrol = true;
trash_value[7] = 0;
trash_value[6] = 0;
trash_value[5] = 0;
trash_value[4] = 0;
trash_value[3] = 0;
trash_value[2] = 0;
trash_value[1] = 0;
trash_value[0] = 0;
