// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_jump_state(){


	get_input();
	calc_movement();
	
	if(on_ground()){
		if(hsp != 0){
			state = states.WALK;
		}
		else{
			state = states.IDLE
		}
	}
	
	if(attack){
		state = states.ATTACK;
		image_index = 0;
	}
	
	if(vsp < 0 && !jump_held){
		max(vsp, jump_spd/jump_damper);
	}
	
	
	collision();
	anim();




}