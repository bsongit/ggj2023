/// @description Insert description here
// You can write your code in this editor

if(sprite_index == animations.run_left || sprite_index == animations.run_right){

	while(place_meeting(x +  max_h_speed ,y,other)){
			x -= 0.01;
	}
	
	while(place_meeting(x - max_h_speed ,y,other)){
			x += 0.01;
	}

}

while(place_meeting(x,y + 2,other)){
		y -= 0.01;
}
v_speed= 0;
h_speed= 0;

wallLimiter = true;

if(itsFly)
	y -= 5;