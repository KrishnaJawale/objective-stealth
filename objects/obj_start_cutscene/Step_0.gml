/// @description Insert description here
// You can write your code in this editor
if (go_to_next_sentence) {
	if (keyboard_check_pressed(vk_enter)) {
		dialogue_drawn = "";
		i = 0;
		index += 1;
		
		if (index == 9) {
			shake = true;
		}
		
		if (index != 11) {
			show_debug_message(index);
			sentence = dialogue[index];
			alarm[0] = 30;
			go_to_next_sentence = false;
		}
		
		else {
			alarm[1] = 100;
		}
	}
}

if (keyboard_check(vk_space)) {
	skip_cutscene += 1;
}

else {
	skip_cutscene = 0;
}

if (skip_cutscene > 60) {
	skipped_cutscene = true;
	room_goto(rm_level_one);
}