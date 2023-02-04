/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pt_br);
draw_set_color(c_orange);
draw_set_halign(fa_left);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 10,"FPS: "+ string(fps) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 20,"Objs: "+ string(instance_count) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 30,"image_index: "+ string(floor(obj_player_anime.image_index)) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 40,"player state: "+ string(obj_player_anime.player_state) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 50,"hspeed: "+ string(obj_player_anime.horizontal_speed) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 60,"vspeed: "+ string(obj_player_anime.vertical_speed) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 70,"room speed: "+ string(room_speed) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 80,"timer: "+ string(global.current_time) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 90,"HP: "+ string(props()._hp) ,1,1,0);
draw_text_transformed(camera_get_view_x(view_camera[0])+ 10 ,camera_get_view_y(view_camera[0])+ 100,"Enemy HP: "+ string(obj_enemy_template.HP) ,1,1,0);
