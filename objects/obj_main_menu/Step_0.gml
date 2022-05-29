/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_down) || (keyboard_check_pressed(ord("S")))) {
	audio_play_sound(snd_menu, 12, false);
	switch (global.selected) {
		case (obj_main_menu_play):
			global.selected = obj_main_menu_controls;
		break;
		
		case (obj_main_menu_controls):
			global.selected = obj_main_menu_quit;
		break;
		
		case (obj_main_menu_quit):
			global.selected = obj_main_menu_play;
		break;
	}
}

if (keyboard_check_pressed(vk_up) || (keyboard_check_pressed(ord("W")))) {
	audio_play_sound(snd_menu, 12, false);
	switch (global.selected) {
		case (obj_main_menu_play):
			global.selected = obj_main_menu_quit;
		break;
		
		case (obj_main_menu_controls):
			global.selected = obj_main_menu_play;
		break;
		
		case (obj_main_menu_quit):
			global.selected = obj_main_menu_controls;
		break;
	}
}

	
if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
	audio_play_sound(snd_menu, 12, false);
	switch (global.selected) {
		case (obj_main_menu_play):
			room_goto(rm_start_cutscene);
		break;
		
		case (obj_main_menu_controls):
			room_goto(rm_controls);
		break;
		
		case (obj_main_menu_quit):
			game_end();
		break;
	}
}