scoreboard players add @s cryptid.pick.cooldown 1000

damage @s 5 minecraft:drown
playsound minecraft:entity.allay.death ambient @a ~ ~ ~ 1 0.1
particle minecraft:vault_connection ~ ~2 ~ 0.5 0.5 0.5 1 600

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_fungus replace minecraft:short_grass
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_hyphae replace #minecraft:logs
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 crimson_nylium replace #minecraft:moss_replaceable
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 netherrack replace #minecraft:base_stone_overworld

tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.vorheart, limit=1, sort=nearest]

execute store result score @s cryptid.player.random run random value 1..10

execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"Your eyes are pulled in a particular direction","color":"dark_red"}
execute if score @s cryptid.player.random matches 2 run tellraw @s {"text":"You feel a supernatural pull","color":"dark_red"}
execute if score @s cryptid.player.random matches 3 run tellraw @s {"text":"Something nudges you in the right direction","color":"dark_red"}
execute if score @s cryptid.player.random matches 4 run tellraw @s {"text":"The pickaxe whispers something unintelligible","color":"dark_red"}
execute if score @s cryptid.player.random matches 5 run tellraw @s {"text":"The air around you chills","color":"dark_red"}
execute if score @s cryptid.player.random matches 6 run tellraw @s {"text":"Something deep in the earth calls to you","color":"dark_red"}
execute if score @s cryptid.player.random matches 7 run tellraw @s {"text":"Your eyes can sense something in this direction","color":"dark_red"}
execute if score @s cryptid.player.random matches 8 run tellraw @s {"text":"You can hear heartbeats through the walls","color":"dark_red"}
execute if score @s cryptid.player.random matches 9 run tellraw @s {"text":"Something ancient is in this direction","color":"dark_red"}
execute if score @s cryptid.player.random matches 10 run tellraw @s {"text":"Blood is pounding in your ears","color":"dark_red"}
