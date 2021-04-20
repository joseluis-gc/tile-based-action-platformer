// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
	
	//carried over decimals
	hsp += hsp_decimal;
	vsp += vsp_decimal;
	
	//floor decimals save and substract
	hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
	hsp -= hsp_decimal;
	
	vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
	vsp -= vsp_decimal;
	
	//horizontal
	//side
	var side;
	//determine wich side to test
	if(hsp > 0){
		side = bbox_right;
	}
	else{
		side = bbox_left;
	}
	
	
	//check top and bottom of side
	var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
	var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);	
	
	
	
	if(t1 != VOID || t2 != VOID)
	{
		if(hsp > 0) x = x - (x mod global.tile_size) + global.tile_size - 1 - (side - x);
		else x = x - (x mod global.tile_size) - (side - x);
		hsp = 0;
	}
	
	x += hsp;


	
	//vertical
	//side
	var side;
	//determine wich side to test
	if(vsp > 0){
		side = bbox_bottom;
	}
	else{
		side = bbox_top;
	}
	
	
	//check top and bottom of side
	var t3 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
	var t4 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp );	
	
	
	
	if(t3 != VOID || t4 != VOID)
	{
		if(vsp > 0) y = y - (y mod global.tile_size) + global.tile_size - 1 - (side - y);
		else y = y - (y mod global.tile_size) - (side - y);
		vsp = 0;
	}
	
	
	y += vsp;

}