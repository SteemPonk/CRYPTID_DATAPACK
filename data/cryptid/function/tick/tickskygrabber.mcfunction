##INIT
execute as @s[tag=!init] positioned as @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute as @s[tag=!init] positioned as @s rotated as @s run tp @s ^-20 ^10 ^30
execute as @s[tag=!init] positioned as @s run tag @s add init



##kill and activate

execute store result score @s cryptid.player.random run random value 1..10000
execute if entity @p[distance=300..] if score @s cryptid.player.random matches 1..100 run function cryptid:events/quietkill

##add effects

tag @a[distance=0..120] add cryptid.blackscreen
execute if entity @p[distance=0..140] if score @s cryptid.player.random matches 1..300 run tag @s add tracking
execute if entity @p[distance=0..140] if score @s cryptid.player.random matches 1..300 run execute as @p at @s run function cryptid:events/general/jump1
execute if entity @p[distance=200..] if score @s cryptid.player.random matches 1..30 run kill @s


###################random
execute store result score @s cryptid.player.random run random value 1..50



##trigger
execute as @s[tag=tracking] at @s run execute at @p positioned ^ ^-80 ^14 run tp @s ~ ~ ~
execute positioned as @s[tag=tracking] rotated as @s run tp @s ~ ~ ~ facing entity @p

execute as @s[tag=tracking] if score @s cryptid.player.random matches 2 run function cryptid:events/sky/roamingentity
execute as @s[tag=tracking] if score @s cryptid.player.random matches 2 run function cryptid:events/sky/ray
execute as @s[tag=tracking] if score @s cryptid.player.random matches 2 run kill @s




execute store result score @s cryptid.player.random run random value 1..30

##rotate
execute if score @s cryptid.player.random matches 3 run execute at @s anchored eyes facing entity @e[sort=random, limit=1,distance=1..] eyes positioned ^ ^ ^5.5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~
##fix rotation
execute rotated as @s[y_rotation=0..] run tp @s[tag=!tracking] ~ ~ ~ ~ 0
##move
execute positioned as @s rotated as @s run tp @s[tag=!tracking] ^ ^0.2 ^0.4




##drop anmd bound box

execute positioned as @s rotated as @s if entity @s[y=200, dy=1000] run tp @s ~ ~-0.5 ~


execute positioned as @s rotated as @s if entity @s[y=100, dy=-1000] run tp @s ~ ~0.5 ~