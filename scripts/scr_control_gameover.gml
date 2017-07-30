///scr_control_gameover()
//reset game when left clicked
if(mouse_check_button_pressed(mb_left) && room != rm_game) {
    //reset stats
    batteries_collected = 0;
    timer_min = 0;
    timer_sec = 0;
    battery_current = battery_max;
    
    //reset states
    obj_game_control.ui_state = scr_ui_start;
    obj_game_control.state = scr_control_start;
//    obj_robot.state = scr_player_move;
//    obj_bow.state = scr_player_move;
    
    //go to starting room
    room_goto(rm_start);
}
