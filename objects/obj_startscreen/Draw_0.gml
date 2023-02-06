/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_pt_br);
draw_set_color(c_white);
draw_set_halign(fa_left);



if(menuCredits){
	draw_set_color(c_black);
	draw_text_transformed(595,395,"CREDITS",8,8,0);
	draw_text_transformed(345,515,"Level Design & Project Manager: Malu",4,4,0);
	draw_text_transformed(345,595,"Level Design & Environment Artist: M_Amelia",4,4,0);
	draw_text_transformed(345,675,"Animation & Concept Artist: @haru.garbs",4,4,0);
	draw_text_transformed(345,755,"Story & Music : Lucas Binotto",4,4,0);
	draw_text_transformed(345,835,"Programming: @bson___",4,4,0);
	draw_set_color(c_orange);
	draw_text_transformed(600,400,"CREDITS",8,8,0);
	draw_text_transformed(350,520,"Level Design & Project Manager: Malu",4,4,0);
	draw_text_transformed(350,600,"Level Design & Environment Artist: M_Amelia",4,4,0);
	draw_text_transformed(350,680,"Animation & Concept Artist: @haru.garbs",4,4,0);
	draw_text_transformed(350,760,"Story & Music : Lucas Binotto",4,4,0);
	draw_text_transformed(350,840,"Programming: @bson___",4,4,0);
}

else{
	draw_set_color(c_gray);
	if(menuIndex == 0){
		draw_set_color(c_white);
	}
	draw_text_transformed(100,900,"Start Game",5,5,0);
	draw_set_color(c_gray);
	if(menuIndex == 1){
		draw_set_color(c_white);
	}
	draw_text_transformed(100,970,"Credits",5,5,0);

	draw_set_color(c_white);
	draw_text_transformed(1550,30,"Version 0.0.1",3,3,0);
}