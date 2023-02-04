/// @description Insert description here
// You can write your code in this editor





if(isCollected){
	if(collectedLightTime > 30){
		instance_destroy(obj_collectlight)
		instance_destroy(self)
		obj_player_anime.image_blend = c_white;
	}
	collectedLightTime++;
}


