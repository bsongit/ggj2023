/// @description Insert description here
// You can write your code in this editor



if(!isCollected){
	instance_create_layer(x,y,"player",obj_collectlight);
	obj_player_anime.image_blend = make_color_hsv(140,500,500);
	props().shoes.push(self.object_index);
}
visible = false;
isCollected = true;


