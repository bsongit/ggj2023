/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.button_D_pressed && !activePoint){
	activePoint = true;
	obj_player_anime.timer += 10;
}


if(!obj_player_anime.boxDialog.visible && room == level1){

	obj_player_anime.boxDialog.visible = true;
	obj_player_anime.boxDialog.x = obj_player_anime.x;
	obj_player_anime.boxDialog.y = obj_player_anime.y - 300;
	setAnimAtObj(obj_player_anime.boxDialog, spr_dialog,6,function () {
			obj_player_anime.boxDialog.visible = false;
	})
}