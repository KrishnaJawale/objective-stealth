/// @description Insert description here
// You can write your code in this editor
if (point_in_rectangle(mouse_x, mouse_y, x - 16, y - 16, x + 160, y + 48)) || (selected) {
	button_col = c_red;
	
	if (mouse_check_button_pressed(mb_left)) || (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(vk_enter)) {
		room_goto(rm_main_menu);
	}
}

else {
	button_col = c_white;
}