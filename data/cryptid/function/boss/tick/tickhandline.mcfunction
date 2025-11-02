execute as @s[tag=!init] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @s[tag=!init] at @s run tag @s add init




execute positioned as @s rotated as @s run tp @s ^ ^ ^3


execute if score @s cryptid.timer matches ..-10 run kill @s


particle minecraft:white_ash ~ ~ ~ 0.4 0.4 0.4 0.01 100

execute positioned ~ 400 ~ positioned over motion_blocking run function cryptid:boss/spawn/spawnhand
