/// @description Insert description here
// You can write your code in this editor

if(!obj_player_anime.freezeMode){
	if(obj_player_anime.x_direction < 0)
		x = obj_player_anime.x - 64;
	if(obj_player_anime.x_direction > 0)
		x = obj_player_anime.x + 64;	
	y = obj_player_anime.y;


	if (obj_player_anime.player_state == "is dragging on the wall" && 
		obj_player_anime.wallLimiter &&
		!place_meeting(x,y,obj_colision01)){
		obj_player_anime.wallLimiter = false;
		obj_player_anime.vertical_speed = 0;
		obj_player_anime.player_state = "is falling";
	}


	if(!place_meeting(x - 2,y,obj_colision01) && !place_meeting(x - 2,y,obj_colision02)) && 
		(!place_meeting(x + 2,y,obj_colision01) && !place_meeting(x + 2,y,obj_colision02))
	{
			obj_player_anime.wallLimiter = false;
	}

}