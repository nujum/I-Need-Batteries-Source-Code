///scr_ui_gameover()
//title
draw_set_halign(fa_center);
draw_set_font(fnt_sans_pro);
draw_set_colour(c_black);
draw_text(room_width/2,40,"I Need Batteries!");
draw_text(room_width/2,80,"----------------");

//stats
draw_set_font(fnt_berlin_big);
draw_text(room_width/2,150,"You lost :(");
draw_text(room_width/2,250,"Time: " + string(timer_min) + ":" + string(timer_sec));
draw_text(room_width/2,350,"Batteries Collected: " + string(batteries_collected) + "/11");
draw_set_font(fnt_berlin);
draw_text(room_width/2,550,"Left Click to try again");
