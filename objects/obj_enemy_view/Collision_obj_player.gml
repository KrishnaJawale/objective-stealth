/// @description Insert description here
// You can write your code in this editor
with (obj_player) {
	if (pstate != pstates.dangling) {
		with (other) {
			with (enemy_owner) {
				if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
					if (!collision_line(x, y, obj_player.x, obj_player.y, obj_door, false, false)) {
						enemy_view.player_in_view += 1;
					}
				}
			}
		}
	}
}