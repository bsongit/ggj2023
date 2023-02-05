/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_pt_br);
draw_set_color(c_white);
draw_set_halign(fa_left);

if(menuIndex == 0){
	draw_set_color(c_yellow);
}
draw_text_transformed(100,900,"Start Game",5,5,0);
draw_set_color(c_white);
if(menuIndex == 1){
	draw_set_color(c_yellow);
}
draw_text_transformed(100,970,"Credits",5,5,0);

draw_set_color(c_white);
draw_text_transformed(1550,30,"Version 0.0.1",3,3,0);
