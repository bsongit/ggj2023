/// @description Insert description here
// You can write your code in this editor
if(!obj_player_anime.freezeMode){
	
	if(lasPlayerXPos == obj_player_anime.x){
		lasPlayerXPos = obj_player_anime.x;
		camera_set_view_border(view_camera[0],228,0);
		camera_set_view_speed(view_camera[0],1,1);
		if(camera_speed > min_camera_speed)
			camera_speed -= camera_aceleration;
	}
	else{
		if(camera_speed < max_camera_speed)
			camera_speed += camera_aceleration;
		x = obj_player_anime.x;
		y = obj_player_anime.y;
		camera_set_view_border(view_camera[0],160,0);
		camera_set_view_speed(view_camera[0],lerp(0,camera_speed,0.9), obj_player_anime.vertical_speed);
		lasPlayerXPos = obj_player_anime.x;
	}
}