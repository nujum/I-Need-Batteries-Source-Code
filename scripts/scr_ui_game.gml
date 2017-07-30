///scr_ui_game
//text
draw_set_font(fnt_berlin);
draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_text(20,20,"Battery Life");

//energy bars (with layers)
if(obj_robot.state = scr_player_berserk){
    draw_sprite_ext(spr_energy_bar,0,20,50,battery_max/100,1,0,c_black,1);
    draw_sprite_ext(spr_energy_bar,0,20,50,(battery_current+battery_to_charge)/100,1,0,c_red,1);
    draw_sprite_ext(spr_energy_bar,0,20,50,battery_current/100,1,0,c_orange,1);    
} else {
    draw_sprite_ext(spr_energy_bar,0,20,50,battery_max/100,1,0,c_black,1);
    draw_sprite_ext(spr_energy_bar,0,20,50,(battery_current+battery_to_charge)/100,1,0,c_aqua,1);
    draw_sprite_ext(spr_energy_bar,0,20,50,battery_current/100,1,0,c_white,1);
}

//timer
draw_text(view_wview[0]-180,20,"Time:");
if(timer_sec >= 9){
    draw_text(view_wview[0]-110,20,string(timer_min) + ":" + string(round(timer_sec)));
} else {
    draw_text(view_wview[0]-110,20,string(timer_min) + ":0" + string(round(timer_sec)));
}

//batteries collected
draw_text(view_wview[0]-180,50,"Batteries: " + string(batteries_collected) + "/11");

//debug stuff
if(debug_mode){
    draw_text(250,20,"robot hsp: " + string(obj_robot.hsp));
    draw_text(250,50,"bow hsp: "+ string(obj_bow.hsp));
}
