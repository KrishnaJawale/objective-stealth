/// @description Insert description here
// You can write your code in this editor
draw_set_colour(button_col);
draw_set_font(fnt_ui);

draw_text(x, y - 16, "Jump");
draw_sprite(spr_w_key, 0, x + 110, y);
draw_sprite(spr_space_key, 0, x + 182, y);