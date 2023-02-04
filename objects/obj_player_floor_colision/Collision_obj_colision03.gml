/// @description Insert description here
// You can write your code in this editor

if(!obj_player_anime.freezeMode){
	obj_player_anime.player_state = "is on the floor";

	obj_player_anime.vertical_speed = 0;
	while place_meeting(x,(y - 0.1), other){
		y -= 0.1;
		obj_player_anime.y = y - barDistance;
	}

	if(obj_player_anime.x_direction < 0){
		while !place_meeting(x - obj_player_anime.horizontal_speed, y, obj_colision01) 
		&& !place_meeting(x - obj_player_anime.horizontal_speed, y, obj_colision03
		){
			y += 0.1;
			obj_player_anime.y = y - barDistance;
		}
	}

	if(obj_player_anime.x_direction > 0){
		while !place_meeting(x + obj_player_anime.horizontal_speed, y, obj_colision01) 
		&& !place_meeting(x + obj_player_anime.horizontal_speed, y, obj_colision03){
			y += 0.1;
			obj_player_anime.y = y - barDistance;
		}
	}

}