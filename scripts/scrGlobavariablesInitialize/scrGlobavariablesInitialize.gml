// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGlobavariablesInitialize(){
global.grav = 1;
global.keyDown = ord("S");
global.keyUp = ord("W");
global.keyRight = ord("D");
global.keyLeft = ord("A");
global.keyJump = vk_space
global.volume = 1;
global.acceleration = 1;
global.zoom = 5;
global.keySkill_1 = ord("E");
global.keyDoor = vk_up;
global.tileSize = 64;
global.slime_speed = 10;
global.birdSpeed = 8;
global.tileValues = ds_map_create();
global.arrowBaseDamage = 0;
scrTileValueInit(global.tileValues);
global.generationGrid = load_csv("testPattern.csv")
}