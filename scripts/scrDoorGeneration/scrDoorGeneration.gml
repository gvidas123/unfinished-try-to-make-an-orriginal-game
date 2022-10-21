// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDoorGeneration(grid){
	gridX = ds_grid_width(grid) -7;
	gridY = floor(ds_grid_height(grid)/irandom(3));
	repeat(ds_grid_height(grid)) {
		if (gridY <= 0) {
			gridY = ds_grid_height(grid);
		}
		if (grid[# gridX,gridY] == 0) {
			grid[# gridX,gridY] = "2";
			break;
		}
		gridY--;
	}
}