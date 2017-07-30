///scr_control_game()
//lose battery over time if player is active
if(obj_robot.state = scr_player_move) battery_current -= 10/room_speed;
if(obj_robot.state = scr_player_berserk) battery_current -= 20/room_speed; 

//if we have juice to gain, gain it
if(battery_to_charge > 0){
    battery_to_charge -= 1;
    battery_current += 1;
}

//if battery is empty, lose
if(battery_current <= 0) {
    battery_current = battery_max;
    ui_state = scr_ui_gameover;
    state = scr_control_gameover;
    room_goto(rm_gameover);
}//gameover

//timer
timer_sec += 1/room_speed; //incrimenting
if(timer_sec >= 60){ //change from seconds to minutes
    timer_min += 1;
    timer_sec -= 1;
}
