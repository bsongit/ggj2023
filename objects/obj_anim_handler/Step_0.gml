/// @description Insert description here
// You can write your code in this editor


if(running){
	
	if(floor(objTarget.image_index)  >= frameIndexOfCallback){
		callbackFunc();
	}

	if(floor(objTarget.image_index) == (sprite_get_number(objTarget.sprite_index) -1)){
		objTarget.sprite_index = global.animtemp;
		running = false;
		objTarget = obj_null;
		frameIndexOfCallback = -1;
		callbackFunc = function(){};
	}
}



