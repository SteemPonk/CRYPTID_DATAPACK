setblock ~ ~-4 ~ minecraft:structure_block{posX:-3,posY:1,posZ:-3,mode:"LOAD",name:"cryptid:spawntemple"}
setblock ~ ~-5 ~ redstone_block
setblock ~ ~-5 ~ air
setblock ~ ~-4 ~ air
setblock ~ ~-3 ~ air
setworldspawn ~ ~ ~
scoreboard players set .init cryptid.worldtimer 1

fill ~14 ~14 ~14 ~-14 ~-14 ~-14 minecraft:red_concrete replace #minecraft:logs
fill ~14 ~14 ~14 ~-14 ~-14 ~-14 minecraft:red_concrete replace #minecraft:moss_replaceable