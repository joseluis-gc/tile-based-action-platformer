// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle_state(){
	
	get_input();
	calc_movement();
	
	if(hsp != 0){
		state = states.WALK;
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