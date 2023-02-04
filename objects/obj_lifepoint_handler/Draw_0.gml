/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(props()._hp == 3){
	draw_sprite(spr_lifepoint,0,100,100);
	draw_sprite(spr_lifepoint,0,200,100);
	draw_sprite(spr_lifepoint,0,300,100);
}

else if(props()._hp == 2){
	draw_sprite(spr_lifepoint,0,100,100);
	draw_sprite(spr_lifepoint,0,200,100);
}
else if(props()._hp == 1){
	draw_sprite(spr_lifepoint,0,100,100);
}
else {
	room_goto(gameover)
}