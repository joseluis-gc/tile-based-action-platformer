// Script assets have changed for v2.3.0 see
function anim(){
	
	sprite_index = sprites_array[state];
	image_xscale = facing;
	
	switch(state){
		
		case states.JUMP:
			if(vsp < 0){
				image_index = 0;
			}
			else{
				image_index = 1;
			}
		break;
		
		case states.ATTACK:
			if(!on_ground()){
				sprite_index = s_player_air_attack;
			}
			else{
				if(hsp != 0){
					sprite_index = s_player_attack_walk_strip;
				}
				else{
					sprite_index = s_player_attack_strip5;
				}
			}
		
		break;
		
	}
	
}