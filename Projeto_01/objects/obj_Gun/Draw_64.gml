/// @description Insert description here
// You can write your code in this editor

draw_set_font (fData);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var offset = 2;
var txt = screen;

txt = string_insert(bullet, txt, string_length(txt)+1);
	
var col = c_white;

var xx = screen_x;
var yy = screen_y - (screen_item_height * (1.5));
	
draw_set_color (c_black);
	
draw_text(xx - offset, yy, txt);
draw_text(xx + offset, yy, txt);
draw_text(xx, yy + offset, txt);
draw_text(xx, yy - offset, txt);
	
draw_set_color(col);
draw_text(xx, yy, txt);
