// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCompletlyRandomBirdSpawning(grid,openAreaSize){
	for (var gridX = 0; gridX < ds_grid_width(grid);gridX++) {
		for (var gridY = 0; gridY < ds_grid_height(grid); gridY++) {
			var viableLocation = true;
			for (var openAreaSizeX = gridX; openAreaSizeX < gridX+openAreaSize;openAreaSizeX++ ) {
				for (var openAreaSizeY = gridY; openAreaSizeY < gridY+openAreaSize;openAreaSizeY++ ) {
					if (grid[# openAreaSizeX,openAreaSizeY]) {viableLocation = false;}
				}
			}
			if (viableLocation = true ) {
				if (irandom(100) == 0) {grid[# gridX,gridY] = "6"}
			}
		}
	}
}