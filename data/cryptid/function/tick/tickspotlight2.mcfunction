

tp @s ~ ~-30 ~ ~ ~15
execute as @s at @s anchored eyes facing entity @e[type=minecraft:vindicator, tag=cryptid.spotlight,sort=nearest, limit=1] eyes run tp @s ~ ~ ~ ~180 ~


execute store result score @s cryptid.roty run data get entity @s Rotation[1] 100
scoreboard players operation @s cryptid.roty *= -1 cryptid.roty
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s cryptid.roty

