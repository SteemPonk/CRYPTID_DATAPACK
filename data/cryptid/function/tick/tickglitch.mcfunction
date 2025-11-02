execute as @s[tag=!init] at @s run execute at @p run spreadplayers ~ ~ 30 80 false @s
execute as @s[tag=!init] at @s run execute at @p run tag @s add init


execute store result score @s cryptid.player.random run random value 1..100
execute if score @s cryptid.player.random matches 1 run execute as @a[distance=0..10] at @s run function cryptid:events/cryptid/radiodead



execute if score @s cryptid.player.random matches 1..20 run damage @s 0 minecraft:player_attack by @p[distance=0..50]
execute if score @s cryptid.player.random matches 1..10 run damage @s 0 minecraft:player_attack by @p[distance=0..350]

tag @a[distance=0..20] add cryptid.bosschase

execute if entity @p[distance=0..9] run tp @s ^ ^ ^1 facing entity @p


particle block_marker{block_state:{Name:bedrock}} ~ ~1 ~ 2 2 2 0.1 1


damage @p[distance=0..5] 5 minecraft:out_of_world by @s

execute if entity @p[distance=0..20] run effect give @s speed 4 4 true

execute if block ~ ~ ~ air run stopsound @a[distance=0..20] 


tag @a[distance=0..10] add cryptid.fearscreen
tag @a[distance=11..] remove cryptid.fearscreen

effect give @a[distance=0..10] minecraft:blindness 1 1 true


tellraw @a[distance=0..5] {"text":"\ua010","font":"minecraft:images"}


fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace water
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace lava

execute as @a[distance=0..8] at @s run tp @s ~ ~ ~
##damage

effect give @e[distance=0..6] minecraft:blindness 1 1 true


execute if entity @s[tag=cryptid.lookedat] run effect give @s minecraft:speed 1 3 true
execute if entity @s[tag=cryptid.lookedat] run tellraw @p[distance=0..25] {"text":"\ua010","font":"minecraft:images"}
execute if entity @s[tag=cryptid.lookedat] run execute as @p at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.deci4, sort=nearest, limit=1]

execute as @e[type=!player, distance=1..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.deci4, sort=nearest, limit=1]

##out of ground

execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~0.03 ~
execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run execute as @a[distance=0..8] at @s run tp @s ~ ~ ~ facing entity @e[type=vindicator, limit=1, sort=nearest, tag=cryptid.deci4] eyes





execute store result score @s cryptid.player.random run random value 1..7

execute if score @s cryptid.player.random matches 1 run data merge entity @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=cryptid.glitchface] {CustomName:'[{"text":"\\ua010","font":"minecraft:images"}]'}

execute if score @s cryptid.player.random matches 2 run data merge entity @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=cryptid.glitchface] {CustomName:'[{"text":"\\ua011","font":"minecraft:images"}]'}

execute if score @s cryptid.player.random matches 3 run data merge entity @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=cryptid.glitchface] {CustomName:'[{"text":"\\ua012","font":"minecraft:images"}]'}

tag @s remove cryptid.lookedat



execute store result score @s cryptid.player.random run random value 1..10000


execute if score @s cryptid.player.random matches 1..20 run effect give @s speed 5 2 true


execute if entity @p[distance=40..] if score @s cryptid.player.random matches 1..3 run function cryptid:events/quietkill
execute if entity @p[distance=40..] if score @s cryptid.player.random matches 1..3 run kill @e[type=armor_stand, sort=nearest, limit=3, tag=cryptid.glitchface]



