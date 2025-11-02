

##slowingtime
execute store result score @s cryptid.player.random run random value 1..3000
execute if entity @p[distance=0..50] run execute store result score @s cryptid.player.random run random value 1..2000



##kill
execute if entity @p[distance=320..] run function cryptid:events/quietkill
execute if entity @p[distance=100..] if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if entity @p[distance=180..] if score @s cryptid.player.random matches 1..2 run function cryptid:events/quietkill


##########tracking mode with no playters
execute at @p if entity @p[y=100,dy=-1500] at @s run tp @s[tag=left] ^ ^ ^0.1 ~0.1 ~
execute at @p if entity @p[y=100,dy=-1500] at @s run tp @s[tag=right] ^ ^ ^0.1 ~-0.1 ~

##up
execute at @p if entity @p[y=100,dy=-1500] at @s positioned as @s if entity @s[y=100, dy=250] run tp @s ^ ^0.07 ^



##curving mode

execute if score @s cryptid.player.random matches 100..120 run tag @s add left
execute if score @s cryptid.player.random matches 100..120 run tag @s remove right

execute if score @s cryptid.player.random matches 120..160 run tag @s add right
execute if score @s cryptid.player.random matches 120..160 run tag @s remove left

#########################dual mode for tracking player
execute at @p if entity @p[y=100,dy=1400] if score @s cryptid.player.random matches 1..2400 run execute at @s anchored eyes facing entity @p eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^155 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~



##moveforward
execute positioned as @s rotated as @s run tp @s ^ ^ ^0.15


##bottom and top limit

execute positioned as @s if entity @s[y=100, dy=-1000] run tp @s ~ ~0.3 ~ ~ 0

##sounbds
execute if score @s cryptid.player.random matches 100..110 if entity @p[distance=0..120] run playsound minecraft:cryptid.whale.spawn ambient @a[distance=0..200] ~ ~ ~ 10 0.2

execute at @p if entity @p[y=100,dy=1400] if score @s cryptid.player.random matches 100..130 if entity @p[distance=0..140] run playsound minecraft:cryptid.whale.spawn ambient @a[distance=0..200] ~ ~ ~ 10 0.2



##damage

execute as @s at @s run tag @a[distance=0..40] add cryptid.fakescreen
execute as @a[distance=0..40] at @s run damage @s 1 cryptid:chomp by @e[tag=cryptid.voidwyrm, type=armor_stand, sort=nearest, limit=1]



##fill
execute if entity @p[distance=0..40] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/axe
execute if entity @p[distance=0..40] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/hoe
execute if entity @p[distance=0..40] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/pickaxe
execute if entity @p[distance=0..40] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/shovel


execute if entity @p[distance=0..40] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines_plant replace #minecraft:mineable/axe
execute if entity @p[distance=0..40] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines_plant replace #minecraft:mineable/hoe
execute if entity @p[distance=0..40] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines_plant replace #minecraft:mineable/pickaxe
execute if entity @p[distance=0..40] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines_plant replace #minecraft:mineable/shovel


