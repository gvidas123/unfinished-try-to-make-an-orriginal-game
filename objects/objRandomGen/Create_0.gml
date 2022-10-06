
var gridWidth = room_width / global.tileSize;
var gridHeight = room_height / global.tileSize;



grid = ds_grid_create(gridWidth,gridHeight);

ds_grid_set_region(grid,0,0,gridWidth,gridHeight,"1");


var controllerX = floor(gridWidth/2);
var controllerY = floor(gridHeight/2);
var controllerDirection = irandom(3);
var directionChangeOdds = 1;


repeat(floor(gridWidth*gridHeight / 4)) {
	grid[# controllerX, controllerY] = 0;
	grid[# controllerX+1, controllerY+1] = 0;
	grid[# controllerX+1, controllerY] = 0;
	grid[# controllerX, controllerY+1] = 0;
	if (irandom(directionChangeOdds) == directionChangeOdds) {
		controllerDirection = irandom(3);
	}
	var xDir = lengthdir_x(1,controllerDirection * 90);
	var yDir = lengthdir_y(1,controllerDirection * 90);
	controllerX +=xDir;
	controllerY +=yDir;
	if (controllerX < 2 || controllerX > gridWidth - 2) {
		controllerX -= xDir*2;
	}
	if (controllerY < 2 || controllerY > gridHeight - 2) {
		controllerY -= yDir*2;
	}
}
ds_grid_set(grid, floor(gridWidth/2), floor(gridHeight/2),"3");
scrGenPatternUniversal(0,0,grid,global.tileValues,global.tileSize,"instances");