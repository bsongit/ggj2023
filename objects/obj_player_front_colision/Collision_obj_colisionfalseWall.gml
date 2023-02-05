/// @description Insert description here
// You can write your code in this editor






if(!obj_player_anime.freezeMode){

	if(obj_player_anime.x_direction < 0){
		obj_player_anime.wallLimiter = true;
		obj_player_anime.horizontal_speed = 0;
		if(place_meeting(x + 0.2,y,other))
			obj_player_anime.x += 0.2;
		if(obj_player_anime.player_state == "is on the floor"){
			obj_player_anime.x += 2;
		}
	}
	if(obj_player_anime.x_direction > 0){
		obj_player_anime.wallLimiter = true;
		obj_player_anime.horizontal_speed = 0;
		if(place_meeting(x - 0.2,y,other))
			obj_player_anime.x -= 0.2;
		if(obj_player_anime.player_state == "is on the floor"){
			obj_player_anime.x -= 2;
		}
	}	

	if(obj_player_anime.draggerItem && ( obj_player_anime.player_state == "is falling")){
		show_debug_message("OK")
	 obj_player_anime.player_state = "is dragging on the wall";
	}

}
