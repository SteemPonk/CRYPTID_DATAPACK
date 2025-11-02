
###init

execute as @s[tag=!init] positioned as @s run tp @s ^ ^ ^30 facing entity @e[sort=random, limit=1, distance=20..]
execute as @s[tag=!init] positioned as @s run execute positioned over ocean_floor run tp @s ~ ~ ~
execute as @s[tag=!init] at @s if block ~ ~ ~ water positioned ~ 512 ~ positioned over world_surface if entity @p[distance=60..] run tag @s add init


##init
execute as @s[tag=init, tag=!active] at @s if score @s cryptid.timer matches ..-40 run item replace entity @s armor.head with potion[custom_model_data=1383]

###END INIT


##partiucles
execute positioned ~ 512 ~ positioned over world_surface run particle minecraft:bubble_column_up ~ ~-1.2 ~ 15 0.9 15 0.1 290


###random
execute store result score @s cryptid.random run random value 1..2000


###dkshjdkjhsds

execute if score @s cryptid.random matches 1..30 run playsound minecraft:cryptid.ocean.tremor ambient @a ~ ~ ~ 3 0.6


##killfish
execute as @e[distance=1..40] at @s if block ~ ~ ~ #cryptid:water run function cryptid:action/kraken/drag
execute as @e[distance=40..60] at @s if block ~ ~ ~ #cryptid:water run function cryptid:action/kraken/draglite

###triggers


execute positioned ~ 512 ~ positioned over world_surface run execute if entity @a[distance=0..22] run tag @s[tag=init] add active



##particles
particle minecraft:bubble ~ ~-20 ~ 12 12 12 0.1 10 normal

##active tick
execute as @s[tag=init, tag=active] at @s run function cryptid:action/kraken/active



##activate

execute as @s[tag=active, tag=!eating] at @s run function cryptid:action/kraken/eat


##kill when done eating or alive too long
execute as @s[tag=init, tag=!active] at @s if entity @p[distance=80..] if score @s cryptid.timer matches ..-5400 run kill @s
execute as @s[tag=init, tag=active] at @s if score @s cryptid.timer matches ..-400 run kill @s



##eat

execute as @s[tag=eating] at @s run tp @s ~ ~-0.21 ~