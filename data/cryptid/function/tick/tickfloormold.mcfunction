execute as @s[tag=!init] run item replace entity @s armor.head with potion[custom_model_data=1374]
execute as @s[tag=!init] at @s run tp @s ~ ~-1.2 ~
execute as @s[tag=!init] at @s positioned as @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute as @s[tag=!init] run tag @s add init








##############AI
execute store result score @s cryptid.player.random run random value 1..3900


execute if score @s cryptid.player.random matches 1 run kill @e[type=armor_stand, tag=cryptid.floormold, distance=0..10, limit=3]
execute if entity @p[distance=140..] run kill @s


##trigger

execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 1..30 run execute as @p at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.floormold, type=armor_stand, sort=nearest, limit=1]
execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 1..30 run effect give @p minecraft:hunger 10 100 true
execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 30..60 run function cryptid:events/cryptid/flicker5
execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 30..90 run damage @p 7 cryptid:cryptid by @s
execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 130..190 run effect give @p minecraft:darkness 10 10 true



execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 0..60 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:red_concrete replace #minecraft:mineable/pickaxe
execute if entity @p[distance=0..7] if score @s cryptid.player.random matches 0..20 run kill @s





