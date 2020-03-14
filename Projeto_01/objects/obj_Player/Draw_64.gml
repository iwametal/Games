/// @description Insert description here
// You can write your code in this editor

draw_set_font (fData);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < trash_items; ++i)
{
	var offset = 2;
	var txt = trash[i];
	
	txt = string_insert(global.trash_value[i], txt, string_length(txt)+1);
	
	var xx = trash_x;
	var yy = trash_y - (trash_item_height * (i * 1.5));
	
	draw_set_color (c_black);
	
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_text(xx, yy - offset, txt);
	
	draw_set_color(c_white);
	draw_text(xx, yy, txt);
}
