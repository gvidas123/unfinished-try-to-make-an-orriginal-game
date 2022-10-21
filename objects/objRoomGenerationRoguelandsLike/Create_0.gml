/// @description Insert description here
// You can write your code in this editor
grid = ds_grid_create(80,40);
corridorWidth = 3;
middleSize = 10;
ds_grid_set_region(grid,0,0,80,40,"1");

ds_grid_set_region(grid,0,ds_grid_height(grid)/2-corridorWidth,ds_grid_width(grid)/4,
ds_grid_height(grid)/2+corridorWidth,0); //first horrizontal block

ds_grid_set_region(grid,ds_grid_width(grid)/4,ds_grid_height(grid)/2-corridorWidth-middleSize,ds_grid_width(grid)/4+(corridorWidth*2),
ds_grid_height(grid)/2+corridorWidth+middleSize,0);

ds_grid_set_region(grid,ds_grid_width(grid)/4+(corridorWidth*2),ds_grid_height(grid)/2+corridorWidth+middleSize,ds_grid_width(grid)/4*3,ds_grid_height(grid)/2+middleSize-corridorWidth,0)

ds_grid_set_region(grid,ds_grid_width(grid)/4+(corridorWidth*2),ds_grid_height(grid)/2-corridorWidth-middleSize,ds_grid_width(grid)/4*3,ds_grid_height(grid)/2-middleSize+corridorWidth,0)

ds_grid_set_region(grid,ds_grid_width(grid)/4*3,ds_grid_height(grid)/2-corridorWidth-middleSize,ds_grid_width(grid)/4*3+(corridorWidth*2),
ds_grid_height(grid)/2+corridorWidth+middleSize,0);

ds_grid_set_region(grid,ds_grid_width(grid),ds_grid_height(grid)/2-corridorWidth,ds_grid_width(grid)/4*3,
ds_grid_height(grid)/2+corridorWidth,0);

scrGenPatternUniversal(0,0,grid,global.tileValues,global.tileSize,"blocks")