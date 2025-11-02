
execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..100 at @s run playsound minecraft:cryptid.skinned.ambient ambient @a[distance=0..3] ~ ~ ~ 1 0.1 1


execute if score @s cryptid.player.random matches 1..5 at @s run tp @s ~ ~ ~ facing entity @p
execute if score @s cryptid.player.random matches 1..5 at @s run execute anchored eyes run tp @s ^ ^ ^3 facing entity @p

execute store result score @s cryptid.player.random run random value 1..1000000

execute if score @s cryptid.player.random matches 5..10 at @s run function cryptid:events/node/block
execute if score @s cryptid.player.random matches 10..15 at @s run function cryptid:events/node/spawn
execute if score @s cryptid.player.random matches 15..20 at @s run function cryptid:events/underground/darkeyes




execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~
execute if score @s cryptid.player.random matches 4.. at @s run tp @s ~ ~ ~ 0 90



execute as @s at @s if entity @s[y=40, dy=500] run function cryptid:events/quietkill


execute if block ~ ~ ~ water run function cryptid:events/quietkill
execute unless block ~ ~ ~ air run tp @s @e[type=!player, sort=nearest, limit=1, distance=1..,tag=!cryptid.grabber]

execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..30] ~ ~ ~ 10 1



execute as @a[distance=0..3] at @s run tp @s ~ ~-0.05 ~ facing entity @e[tag=cryptid.grabber, sort=nearest, limit=1] 

execute store result score @s cryptid.player.random run random value 1..10000

execute if score @s cryptid.player.random matches 125 run function cryptid:events/quietkill
