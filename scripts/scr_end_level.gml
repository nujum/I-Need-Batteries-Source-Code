///scr_end_level()
//go right until we are outside of the room
if(x>room_width + 32){
    room_goto(rm_congradulations);
} else {
    x+=2;
}
