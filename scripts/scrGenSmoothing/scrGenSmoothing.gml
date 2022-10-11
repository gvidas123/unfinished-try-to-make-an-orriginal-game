// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGenSmoothing(grid){
	for ( gridX = 1; gridX < ds_grid_width(grid)-1;gridX++) {
		for (gridY = 1; gridY < ds_grid_height(grid)-1;gridY++){
			if ((grid [# gridX+1, gridY] == grid[# gridX-1, gridY]) && (grid [# gridX, gridY+1] == grid[# gridX, gridY - 1])) {
				if (irandom(1) == 0) {
				grid[# gridX, gridY] = grid [# gridX+1, gridY];
				}
				else {
				grid[# gridX, gridY] = grid [# gridX, gridY+1];
				}
				continue;
			}
			if (grid [# gridX+1, gridY] == grid[# gridX-1, gridY]) {
				grid[# gridX, gridY] = grid [# gridX+1, gridY];
				continue;
			}
			if (grid [# gridX, gridY+1] == grid[# gridX, gridY-1]) {
			
				grid[# gridX, gridY] = grid [# gridX, gridY+1];
				continue;
			}
		}

	}
}