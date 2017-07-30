///scr_ui_start()
//text
//title
draw_set_halign(fa_center);
draw_set_font(fnt_sans_pro);
draw_set_colour(c_black);
draw_text(room_width/2,100,"I Need Batteries!");

//start
instance_create(250,room_height/2,obj_button_start);
instance_create(room_width-250,room_height/2,obj_button_tutorial);
