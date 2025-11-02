execute if entity @p[distance=120..] run kill @s

execute store result score @s cryptid.player.random run random value 1..4

execute if score @s cryptid.player.random matches 1 if entity @p[scores={cryptid.player.damage=1..}, distance=0..6] run function cryptid:action/hostile/iblockstart


execute store result score @s cryptid.player.random run random value 1..10000
execute if score @s cryptid.player.random matches 1..4 run tag @s add killiblock
execute if entity @s[tag=killiblock] run tp @s ~ ~-0.2 ~
execute as @s[tag=killiblock] at @s if entity @s[y=0, dy=-1000] run kill @s



##des[awm




particle minecraft:ominous_spawning ~ ~ ~ 1 1 1 0.1 1

##trigger
execute if entity @s[tag=cryptid.block.1, scores={cryptid.player.eventscore=1}] run function cryptid:events/underground/spawndecimator
execute if entity @s[tag=cryptid.block.2, scores={cryptid.player.eventscore=1}] run function cryptid:events/general/spawnglitch
execute if entity @s[tag=cryptid.block.3, scores={cryptid.player.eventscore=1}] run function cryptid:events/general/spawnmouth
execute if entity @s[scores={cryptid.player.eventscore=1}] run function cryptid:events/quietkill


scoreboard players remove @s[scores={cryptid.player.eventscore=1..}] cryptid.player.eventscore 1
