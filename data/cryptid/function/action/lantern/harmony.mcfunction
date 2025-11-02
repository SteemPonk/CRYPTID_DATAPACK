
execute store result score @s cryptid.random run random value 1..8

execute if score @s cryptid.random matches 1 run time set midnight
execute if score @s cryptid.random matches 1 run function cryptid:events/cryptid/tortured
execute if score @s cryptid.random matches 1 run function cryptid:events/general/ant
execute if score @s cryptid.random matches 1 run function cryptid:events/cryptid/jelly1

damage @s 12 minecraft:drown
playsound minecraft:entity.allay.death ambient @a ~ ~ ~ 1 0.1
particle minecraft:vault_connection ~ ~2 ~ 0.5 0.5 0.5 1 600
scoreboard players add @s cryptid.player.harmony 4000
scoreboard players set @s cryptid.item.lantern.cooldown 2000

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_fungus replace minecraft:short_grass
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_hyphae replace #minecraft:logs
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 crimson_nylium replace #minecraft:moss_replaceable
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 netherrack replace #minecraft:base_stone_overworld

