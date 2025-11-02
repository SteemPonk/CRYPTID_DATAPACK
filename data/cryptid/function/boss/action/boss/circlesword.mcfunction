execute positioned as @s run tp @s ~ ~ ~ ~6 ~

execute positioned ^ ^-2.5 ^7 run function cryptid:boss/spawn/spawnsword


execute positioned ^ ^110 ^7 run tag @e[type=zombie, tag=boss.sword, sort=nearest, limit=1] add fixed


scoreboard players remove @s boss.circlesword 1

