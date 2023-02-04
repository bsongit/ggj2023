/// @description Insert description here
// You can write your code in this editor





if(buffer.jsLength() > 0 && floor(gameObj.image_index) == (sprite_get_number(gameObj.sprite_index) -1)){
	gameObj.sprite_index = buffer.values[0];
	buffer.splice(0,1);
	gameObj.image_index = 0;
}

