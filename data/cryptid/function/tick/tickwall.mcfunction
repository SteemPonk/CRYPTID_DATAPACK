##second tag
execute if score .heartbeat cryptid.globalevent matches 1 if entity @s[tag=init, tag=!init2] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1350]
execute if score .heartbeat cryptid.globalevent matches 1 if entity @s[tag=init, tag=!init2] run attribute @s minecraft:generic.scale base set 160
execute if score .heartbeat cryptid.globalevent matches 1 if entity @s[tag=init, tag=!init2] run tag @s add init2

##first tag
execute if entity @s[tag=!init] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[tag=!init] at @s run tag @s add init


##random
execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.wall.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.7 1


execute at @s anchored eyes facing entity @p eyes positioned ^ ^ ^0.01 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.08 ~ ~


##kill
execute as @s at @s if entity @s[y=60,dx=1000] run function cryptid:events/quietkill



##advanced player selection

execute anchored eyes positioned ^ ^ ^-398 as @a[distance=0..401] run tag @s add zone1
execute anchored eyes positioned ^ ^ ^400 as @a[distance=0..401] run tag @s add zone2
execute as @a[tag=zone1, tag=zone2] at @s run function cryptid:action/meatcapture

##kill @s
execute if score @s cryptid.timer matches ..0 run function cryptid:events/quietkill


tag @a remove zone1
tag @a remove zone2



##kill
execute if entity @p[distance=110..] run function cryptid:events/quietkill