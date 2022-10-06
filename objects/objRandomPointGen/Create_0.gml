/// @description Insert description here
// You can write your code in this editor

surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);

//file_grid = load_csv("testPattern.csv");

xTotalSize = 300
yTotalSize = 170

file_grid = ds_grid_create(xTotalSize, yTotalSize)
xPoints = ds_list_create()
yPoints = ds_list_create()
randomize()
for (i = 1; i < 100; i++) {
	ds_list_add(xPoints, i*3)
	ds_list_add(yPoints, irandom(9)+1)
}
show_debug_message(xPoints[|0])
for (i = 1; i < 99; i++) {
	ds_grid_set(file_grid, xPoints[|i], yPoints[|i], 5)
}





/*
xPoint1 = 5
xPoint2 = 10
xPoint3 = 15
yPoint1 = 1
yPoint2 = 5
yPoint3 = 7
ds_grid_set(file_grid, xPoint1, yPoint1, 5)
ds_grid_set(file_grid, xPoint2, yPoint2, 5)
ds_grid_set(file_grid, xPoint3, yPoint3, 5)*/
for (j = 1; j < 89; j++) {
	angle1 = arctan((yPoints[|j+1]-yPoints[|j])/(xPoints[|j+1]-xPoints[|j]))
	fullDistance = sqrt(power(yPoints[|j+1]-yPoints[|j], 2)+power(xPoints[|j+1]-xPoints[|j], 2))
	show_debug_message("Angle:")
	show_debug_message(radtodeg(angle1))
	show_debug_message("Distance:")
	show_debug_message(fullDistance)
	show_debug_message("x")
	show_debug_message(xPoints[|j])
	show_debug_message("y")
	show_debug_message(yPoints[|j])
	for	(i = 0; i < 10; i++) {
		var increment = (fullDistance/10)*i
		var xIncrement = increment*cos(angle1)
		var yIncrement = increment*sin(angle1)
		xDrawPoint = (xPoints[|j] + xIncrement)
		yDrawPoint = (yPoints[|j] + yIncrement)
		show_debug_message(yDrawPoint)
		ds_grid_set(file_grid, xDrawPoint, yDrawPoint, 1)
		instance_create_depth(xDrawPoint*64, yDrawPoint*64, 1, objTrialBlock)
	}
	show_debug_message("-----------------------------")
}

for (i = 0; i < 99; i++) {
	ds_grid_set(file_grid, xPoints[|i], yPoints[|i], xPoints[|i])
}








