
var gridWidth = room_width / global.tileSize;
var gridHeight = room_height / global.tileSize;
smoothness = 5;
smooth_brain_moment = 20


grid = ds_grid_create(gridWidth,gridHeight);

ds_grid_set_region(grid,0,0,gridWidth,gridHeight,"1");
randomness = 3+4*(smooth_brain_moment)

var controllerX = 6//floor(gridWidth/2);
var controllerY = 6//floor(gridHeight/2);
var controllerDirection = irandom(randomness);
var directionChangeOdds = 1;
randomise();
randomnesR = 25;
randomnesL = 25;
randomnesU = 25;
randomnesD = 25;

repeat(floor(gridWidth*gridHeight /2)) {
	grid[# controllerX, controllerY] = 0;
	grid[# controllerX+1, controllerY+1] = 0;
	grid[# controllerX+1, controllerY] = 0;
	grid[# controllerX, controllerY+1] = 0;
	
	if (irandom(directionChangeOdds) == directionChangeOdds) {
		var random_ = irandom(randomnesR + randomnesL +randomnesU + randomnesD);
		if (random_ < randomnesR) {
			controllerDirection = 0;
		}
		else if (random_ < randomnesR + randomnesL ) {
				controllerDirection = 2;
		}
		else if (random_ < randomnesR + randomnesL +randomnesU) {
				controllerDirection = 1;
		}
		else if (random_ < randomnesR + randomnesL +randomnesU + randomnesD) {
				controllerDirection = 3;
		}
	}
	var xDir = lengthdir_x(1,controllerDirection * 90);
	var yDir = lengthdir_y(1,controllerDirection * 90);
	controllerX +=xDir;
	controllerY +=yDir;
	if (controllerX < 6) {
		randomnesR++;
		randomnesL--;
	}
	if (controllerX > gridWidth - 6) {
		randomnesL++;
		randomnesR--;
	}
	if (controllerY < 6) {
		randomnesD++;
		randomnesU--;
	}
	if (controllerY > gridHeight - 6) {
		randomnesD--;
		randomnesU++;
	}
	if (controllerX < 6 || controllerX > gridWidth - 6) {
		controllerX -= xDir*2;
		
	}
	
	if (controllerY < 6 || controllerY > gridHeight - 6) {
		controllerY -= yDir*2;
	}
}
repeat(4) {
	scrGenSmoothing(grid);
}
scrCompletlyRandomSlimeSpawning(grid);
scrCompletlyRandomBirdSpawning(grid,5);
ds_grid_set(grid,6,6,"5")
scrGenPatternUniversal(0,0,grid,global.tileValues,global.tileSize,"instances");
