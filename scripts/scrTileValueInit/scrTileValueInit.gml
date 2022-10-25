// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTileValueInit(map){
	ds_map_add(map,"-1",objEmpty);
	ds_map_add(map,"1",objTrialBlock);
	ds_map_add(map,"2",objDoor);
	ds_map_add(map,"3",objDestroyableBlock);
	ds_map_add(map,"4",objSlime);
	ds_map_add(map,"5",objPlayer4);
	ds_map_add(map,"6",objBird);
	return map;
}