execute store result score @s cryptid.player.random run random value 1..10


execute if score @s cryptid.player.random matches 1..3 run execute as @e[distance=1..10,sort=random,limit=3] at @s run effect give @s minecraft:poison 6 2 true

execute if score @s cryptid.player.random matches 5..7 run execute as @e[distance=1..40,sort=random,limit=5] at @s run data merge entity @s {NoAI:1}
execute if score @s cryptid.player.random matches 5..7 run execute as @e[distance=1..40,sort=random,limit=5] at @s run tp @s ~ ~ ~ facing entity @p


execute if score @s cryptid.player.random matches 2..4 run execute as @e[distance=1..10,sort=random,limit=2,type=!armor_stand,type=!player,tag=!cryptid] at @s run tag @s add cryptid.infested
execute if score @s cryptid.player.random matches 2..4 run execute as @e[distance=1..10,sort=random,limit=2,type=!armor_stand,type=!player,tag=!cryptid] at @s run tag @s add cryptid


execute if score @s cryptid.player.random matches 3..6 run execute as @e[distance=1..10,sort=random,limit=2,type=!player] at @s run tag @s add cryptid.spreader
execute if score @s cryptid.player.random matches 3..6 run execute as @e[distance=1..10,sort=random,limit=2,type=!player] at @s run tag @s add cryptid


execute if score @s cryptid.player.random matches 4..10 run execute as @e[distance=1..10,sort=random,limit=2,type=!player] at @s run attribute @s minecraft:generic.movement_speed modifier add 123021 1.1 add_multiplied_base

execute if score @s cryptid.player.random matches 1..10 run execute as @e[distance=1..10,sort=random,limit=2] at @s run function cryptid:action/spawnflower



