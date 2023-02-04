/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(obj_rootPoint_A.activePoint && obj_rootPoint_B.activePoint){
	obj_horizontal_wood.visible = true;
	if(!obj_player_anime.pauseTime)
		obj_player_anime.timer -= 10;
	obj_player_anime.pauseTime = true;

}