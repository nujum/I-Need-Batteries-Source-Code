///scr_player_start()
//start moving until fully onscreen
x += 2;

//switch to move state
if(x>32) state = scr_player_move;
