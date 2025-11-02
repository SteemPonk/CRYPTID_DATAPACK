execute store result score @s cryptid.player.random run random value 1..100

execute if score @s cryptid.player.random matches 1..20 run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^7 run function cryptid:events/cryptid/creep
execute if score @s cryptid.player.random matches 35..38 run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute if score @s cryptid.player.random matches 99 run function cryptid:events/cryptid/flicker5


tag @s add cryptid.fearscreen

effect give @s slowness 1 1 true

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 netherrack replace #minecraft:base_stone_overworld