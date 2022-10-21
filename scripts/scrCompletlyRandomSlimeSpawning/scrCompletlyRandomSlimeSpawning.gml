// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCompletlyRandomSlimeSpawning(grid){
	for ( gridX = 0; gridX < ds_grid_width(grid);gridX++) {
		for ( gridY = 0; gridY < ds_grid_height(grid); gridY++) {
			if (grid[# gridX,gridY] == 0 && grid[# gridX,gridY+1] == "1") {
				if (irandom(50) == 0 ) {grid[# gridX,gridY] = "4"}	
			}
		}
	}
}