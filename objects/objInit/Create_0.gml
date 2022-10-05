/// @description Insert description here
// You can write your code in this editor
global.grav = 1;
global.keyDown = vk_down;
global.keyUp = vk_up;
global.keyRight = vk_right;
global.keyLeft = vk_left;
global.keyJump = ord("X");
global.volume = 1;
global.acceleration = 1;
global.zoom = 5;
global.keySkill_1 = ord("Z")
global.keyDoor = vk_up;
global.tileValues = ds_map_create();
ds_map_add(global.tileValues,1,objTrialBlock);
global.tileValues[? 2] = objDoor;
global.generationGrid = ds_grid_create(2,2);
ds_grid_set(global.generationGrid,0,0,1);
ds_grid_set(global.generationGrid,0,1,0);
ds_grid_set(global.generationGrid,1,0,1);
ds_grid_set(global.generationGrid,1,1,2);
room_goto_next();




