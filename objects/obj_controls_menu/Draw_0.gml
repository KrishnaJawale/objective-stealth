/// @description Insert description here
// You can write your code in this editor
draw_set_colour(button_col);
draw_set_font(fnt_ui);

draw_text(x, y - 16, "Quit to Main Menu");
draw_sprite(spr_key_esc, 0, x + 300, y);