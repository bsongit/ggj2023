/// @description Insert description here
// You can write your code in this editor




if(activeCounter){
	if(counter < maxDelay){
		sprite_index = spr_portal4active;
		obj_raio_teleporte2.visible = true;
		counter++;
	}
	else {
		sprite_index = spr_portal4;
		obj_raio_teleporte2.visible = false;
		activeCounter = false;
	}
}





