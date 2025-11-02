##init

execute as @s[tag=!init] at @s run tag @s add cryptid.timer
execute as @s[tag=!init] at @s unless block ~ ~ ~ air run execute positioned ~ 400 ~ positioned over world_surface positioned ~ ~40 ~ run tp @s ~ ~ ~
execute as @s[tag=!init] at @s run tag @s add init






##behavior


execute positioned as @s run tp @s ^-2 ^-5.5 ^-7


execute if score @s cryptid.timer matches ..-6 run kill @s
