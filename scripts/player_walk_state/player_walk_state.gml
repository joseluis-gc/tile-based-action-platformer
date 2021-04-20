// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk_state(){
	
	get_input();
	calc_movement();
	
	if(hsp == 0){
		state = states.IDLE;
	}
	
	if(attack){
		state = states.ATTACK;
		image_index = 0;
	}
	
	if(jump){
		state = states.JUMP;
		vsp = jump_spd;
	}
	
	if(block){
		state = states.BLOCK;
		hsp = 0;
	}
	
	
	collision();
	anim();
	
}