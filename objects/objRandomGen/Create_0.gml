/// @description Insert description here
// You can write your code in this editor
i = 0;
randomiser = 0;

repeat(room_width / 64 - 1) {
randomiser = floor(random(6));
if (randomiser == 0) {scrGenSquarePattern(32+(i*64),864,3,objTrialBlock,"blocks");}
//if (randomiser == 1) {instance_create_layer(32+(i*64),864,"blocks",objTrialBlock);}
//if (randomiser == 2) {instance_create_layer(32+(i*64),864,"blocks",objDestroyableBlock);}

i++;
}




