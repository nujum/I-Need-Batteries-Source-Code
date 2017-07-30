///scr_player_berserk()
scr_input();

//movement
if (right || left) {
    if (right) hsp += acc; //movement without acc
    if (left) hsp -= acc;  
    //don't increase over speed
    if (hsp >= spd) hsp = spd;
    if (hsp <= -spd) hsp = -spd;
} else {
    //slow down to 0
    if(hsp > 1) {
        hsp -= acc; 
    } else if(hsp < -1){
        hsp += acc;
    } else {
        hsp = 0;
    }
}
    
//collision
if(place_meeting(x+hsp,y,obj_wall)) hsp = 0;

//animation
if(hsp != 0) image_speed = 1 else image_speed = 0;

//movement
x += 1.5 * hsp;

//berserk mode
if(mouse_check_button_pressed(mb_right)){
    state = scr_player_move;
    image_blend = c_white;
}
