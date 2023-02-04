
if(obj_player_anime.player_state != "is dead" && !obj_player_anime.freezeMode){

	obj_player_anime.player_state = "is on the floor";

	obj_player_anime.vertical_speed = 0;
	while place_meeting(x,(y - 0.2), other){
		y -= 0.2;
		obj_player_anime.y = (y - barDistance);
	}

}