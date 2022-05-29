/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(fnt_ui);

if (objective_text == "Go through the SINGLE POINT OF ENTRY") {
	draw_set_colour(c_white);
	draw_text(x, y, "Go through the");
	draw_set_colour(c_red);
	draw_text(x + 240, y, "SINGLE POINT OF ENTRY");
	draw_set_colour(c_black);
}

else if (objective_text == "Get to roof through the SINGLE POINT OF ENTRY") {
	draw_set_colour(c_white);
	draw_text(x, y, "Go through ");
	draw_set_colour(c_red);
	draw_text(x + 240, y, "SINGLE POINT OF ENTRY");
	draw_set_colour(c_black);
}

else {
	draw_text(x, y, objective_text);
}