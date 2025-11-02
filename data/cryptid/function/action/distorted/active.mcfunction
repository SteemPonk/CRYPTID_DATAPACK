execute store result score @s cryptid.player.random run random value 1..7

execute if score @s cryptid.player.random matches 1 run data merge entity @s {CustomName:'[{"text":"\\ua010","font":"minecraft:images"}]'}

execute if score @s cryptid.player.random matches 2 run data merge entity @s {CustomName:'[{"text":"\\ua011","font":"minecraft:images"}]'}

execute if score @s cryptid.player.random matches 3 run data merge entity @s {CustomName:'[{"text":"\\ua012","font":"minecraft:images"}]'}


attribute @s minecraft:generic.scale base set 0.01

##player

tp @s ~ ~ ~ facing entity @p

execute as @p at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.distorted, sort=nearest, limit=1]
tag @p add cryptid.blackscreen