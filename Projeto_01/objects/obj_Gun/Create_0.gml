/// @description Insert description here
// You can write your code in this editor

instance_create_layer(obj_Player.x, obj_Player.y, "Trash_Collect", obj_Strap);

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 675;

screen_x = gui_width - 50;
screen_y = gui_height - gui_margin;
screen_item_height = font_get_size(fData);

screen = "BULLET: ";


reload = false;
reloadSpeed = 2;
bullet = 100;
bulletPerShot = 5;
shot = bullet-1;
firingDelay = 0;
recoil = 0;
