execute store result score @s cryptid.player.random run random value 1..100


execute if score @s cryptid.player.random matches 2.. run execute rotated as @s facing entity @e[sort=random, limit=1] eyes run tp @s ^ ^ ^0.03 facing entity @p

execute if entity @p[distance=30..] run kill @s


##light
execute unless predicate cryptid:checklight run kill @s

execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run kill @s


execute store result score @s cryptid.player.random run random value 1..300

execute if score @s cryptid.player.random matches 2 run kill @s


##player

execute if entity @p[distance=0..2] run playsound minecraft:entity.spider.death ambient @a[distance=0..5] ~ ~ ~ 1 0.1
execute if entity @p[distance=0..2] run damage @p 1 magic by @s
execute if entity @p[distance=0..2] run kill @s