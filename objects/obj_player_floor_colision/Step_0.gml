/// @description Insert description here
// You can write your code in this editor

if(!obj_player_anime.freezeMode){

	x = obj_player_anime.x;
	y = obj_player_anime.y + barDistance;


	if (obj_player_anime.player_state == "is on the floor" && 
		!obj_player_anime.wallLimiter && 
		(!place_meeting(x,y,obj_colision01) && !place_meeting(x,y,obj_colision03))){

		obj_player_anime.player_state = "is falling";
	}

}