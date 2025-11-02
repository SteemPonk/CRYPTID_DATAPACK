execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace torch
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace lantern
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace glowstone
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace redstone_lamp
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace soul_lantern
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace campfire
execute if entity @p[distance=0..30] run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace copper_bulb



execute store result score @s cryptid.player.random run random value 1..20000



##random events


execute if entity @a[scores={cryptid.sprinting=1..}, distance=0..8] run damage @s 0 minecraft:player_attack by @p
execute if entity @a[scores={cryptid.walking=1..}, distance=0..8] run damage @s 0 minecraft:player_attack by @p








execute if score @s cryptid.player.random matches 1 run damage @s 0 minecraft:mob_attack by @e[sort=random, distance=1..,limit=1]

execute if score @s cryptid.player.random matches 12..14 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 120..290 run function cryptid:action/occult/burst



damage @p[distance=0..2] 0.2 minecraft:sonic_boom

execute as @e[type=!player, distance=1..9,tag=!cryptid] at @s run tp @s ~ ~ ~ facing entity @e[type=zombified_piglin, tag=cryptid.occult,limit=1, sort=nearest]

execute if entity @s[tag=cryptid.lookingoccult] run effect give @s speed 1 2 true

effect give @s minecraft:invisibility infinite 255 true

execute if entity @p[distance=0..40] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 nether_wart_block replace #minecraft:mineable/shovel



tag @s remove cryptid.lookingoccult


