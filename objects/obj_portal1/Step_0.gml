/// @description Insert description here
// You can write your code in this editor




if(activeCounter){
	if(counter < maxDelay){
		sprite_index = spr_portal1active;
		obj_raio_teleporte.visible = true;

		counter++;
	}
	else {
		sprite_index = spr_portal1;
		obj_raio_teleporte.visible = false;
		activeCounter = false;
	}
}





