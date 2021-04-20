// Script assets have changed for v2.3.0 see
function calc_movement(){

	//move
	hsp += (right - left) * walk_spd;
	vsp += global.grav;

	//drag
	hsp = lerp(hsp, 0, drag);

	//stop decrease speed
	if(abs(hsp) <= 0.1)
	{
		hsp = 0;
	}

	//face correct way
	if(hsp != 0)
	{
		facing = sign(hsp);
	}

	//limit speed so it doesnt keep incrementing from the move section
	hsp = min(abs(hsp), max_hsp) * facing;


}