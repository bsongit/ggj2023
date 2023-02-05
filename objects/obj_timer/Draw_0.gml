/// @description Inserir descrição aqui
// Você pode escrever seu código neste editord

draw_set_font(fnt_pt_br);
draw_set_halign(fa_left);
draw_set_color(c_white)
if(obj_player_anime.timer >= 0){
	draw_text_transformed(1500,80,string(obj_player_anime.timer),8,8,0);
}
