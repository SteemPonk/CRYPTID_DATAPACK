execute store result score @s cryptid.player.random run random value 1..27


execute if score @s cryptid.player.random matches 1 run summon minecraft:lightning_bolt

execute if score @s cryptid.player.random matches 2 run setblock ~ ~-1 ~ netherrack
execute if score @s cryptid.player.random matches 2 run setblock ~ ~ ~ redstone_torch
execute if score @s cryptid.player.random matches 1..6 run setblock ~5 ~5 ~5 crying_obsidian

execute if score @s cryptid.player.random matches 3 run setblock ~ ~-1 ~ netherrack
execute if score @s cryptid.player.random matches 3 run setblock ~ ~ ~ chest

execute if score @s cryptid.player.random matches 4 run setblock ~ ~-1 ~ netherrack
execute if score @s cryptid.player.random matches 4 run setblock ~ ~ ~ redstone_block

execute if score @s cryptid.player.random matches 5 run place feature minecraft:azalea_tree
execute if score @s cryptid.player.random matches 5 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 netherrack replace #minecraft:leaves
execute if score @s cryptid.player.random matches 5 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 nether_wart_block replace #logs


execute if score @s cryptid.player.random matches 6 run place feature minecraft:forest_rock

execute if score @s cryptid.player.random matches 7 run setblock ~ ~-1 ~ crimson_nylium
execute if score @s cryptid.player.random matches 7 run place feature minecraft:crimson_forest_vegetation

execute if score @s cryptid.player.random matches 8 run setblock ~ ~-1 ~ barrel
execute if score @s cryptid.player.random matches 9 run setblock ~ ~-1 ~ crimson_nylium
execute if score @s cryptid.player.random matches 10 run setblock ~ ~-1 ~ glass
execute if score @s cryptid.player.random matches 11 run setblock ~ ~-1 ~ cobblestone
execute if score @s cryptid.player.random matches 12 run setblock ~ ~-1 ~ stone_bricks
execute if score @s cryptid.player.random matches 13 run setblock ~ ~-1 ~ crimson_stem
execute if score @s cryptid.player.random matches 14 run setblock ~ ~-1 ~ furnace
execute if score @s cryptid.player.random matches 15 run setblock ~ ~-1 ~ crimson_nylium
execute if score @s cryptid.player.random matches 16 run setblock ~ ~-1 ~ crimson_nylium
execute if score @s cryptid.player.random matches 17 run setblock ~ ~-1 ~ crimson_nylium

execute if score @s cryptid.player.random matches 17..21 run execute as @e[distance=1..20,sort=random,limit=2] at @s run function cryptid:action/spawntree

