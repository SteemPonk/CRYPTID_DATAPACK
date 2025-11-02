##second tag
execute if score .heartbeat cryptid.globalevent matches 1 if entity @s[tag=init, tag=!init2] run attribute @s minecraft:generic.scale base set 160
execute if score .heartbeat cryptid.globalevent matches 1 if entity @s[tag=init, tag=!init2] run tag @s add init2

##first tag
execute if entity @s[tag=!init] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[tag=!init] at @s run tag @s add init


##random
execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.wall.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.7 1

tp @s ^ ^ ^0.09

tag @s remove cryptid.infested

particle block_marker{block_state:{Name:black_concrete}} ~ ~1 ~ 10 10 10 0 30 force

tag @a[distance=0..20] add cryptid.blackscreen



execute as @e[distance=1..30, type=!player,tag=!cryptid] at @s run tag @s add cryptid.infested
execute as @e[distance=1..30, type=!player, tag=!cryptid] at @s run tag @s add cryptid


##advanced player selection
execute if entity @p[distance=0..50] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 sculk_vein replace wall_torch

execute if entity @p[distance=0..50] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 sculk_vein replace torch
execute if entity @p[distance=0..50] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 sculk_vein replace redstone_torch
execute if entity @p[distance=0..50] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 sculk_vein replace redstone_wall_torch

fillbiome ~10 ~10 ~10 ~-10 ~-10 ~-10 cryptid:empty

##kill
execute if entity @p[distance=70..] run function cryptid:events/quietkill
execute if score .globaltime cryptid.time matches 1..13000 run kill @s

##damage
effect give @p[distance=0..20] wither 1 3 true
