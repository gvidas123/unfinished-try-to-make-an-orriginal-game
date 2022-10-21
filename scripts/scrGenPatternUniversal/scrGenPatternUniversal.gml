// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGenPatternUniversal(xOrigin,yOrigin,grid,map,tileS,layerId) {
	
	xOrigin += (tileS/2);
	yOrigin += (tileS/2);
	var variable0 = 0;
	
	repeat(ds_grid_width(grid)){
		var variable1 = 0;
		repeat(ds_grid_height(grid)) {
			var tile = ds_grid_get(grid,variable0,variable1);
			
			if (tile != "0") {
				instance_create_layer(xOrigin + (tileS*variable0),yOrigin + (tileS*variable1),layerId,map[? tile]);
			}
			
			variable1++;
		}
		
		variable0++;
	}
}