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
global.tileSize = 64;
global.tileValues = ds_map_create();
ds_map_add(global.tileValues,"1",objTrialBlock);
ds_map_add(global.tileValues,"2",objDoor);
ds_map_add(global.tileValues,"3",objPlayer2);
global.generationGrid = load_csv("testPattern.csv")
room_goto_next();




