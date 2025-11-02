execute if entity @s[tag=!init] run function cryptid:events/cryptid/flicker2

execute if entity @s[tag=!init] run tag @s add init

execute store result score @s cryptid.player.random run random value 1..100


execute as @s at @s store result score @s cryptid.mob.movx run data get entity @s Motion[0] 1000
execute as @s at @s store result score @s cryptid.mob.movy run data get entity @s Motion[1] 1000
execute as @s at @s store result score @s cryptid.mob.movz run data get entity @s Motion[2] 1000

item replace entity @s[scores={cryptid.mob.movx=0,cryptid.mob.movz=0}] armor.head with potion[minecraft:custom_model_data=1343]

execute if entity @s[scores={cryptid.mob.movx=1..}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1342]
execute if entity @s[scores={cryptid.mob.movz=1..}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1342]
execute if entity @s[scores={cryptid.mob.movy=1..}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1342]



##real AI



##AGRROO
execute store result score @s cryptid.player.random run random value 1..5000

##anger
execute if entity @p[distance=0..10] if score @s[tag=!cryptid.active,tag=!warning] cryptid.player.random matches 1..30 run function cryptid:action/spider/warningspider
execute if entity @p[distance=0..4] if score @s[tag=!cryptid.active,tag=!warning] cryptid.player.random matches 1..200 run function cryptid:action/spider/warningspider
execute if score @s[tag=cryptid.lookingspider, tag=!cryptid.active,tag=!warning] cryptid.player.random matches 50..110 run function cryptid:action/spider/warningspider



##end
tag @s remove cryptid.lookingspider


##checkt o anger
execute if entity @s[tag=warning] if score @s cryptid.timer matches 0 run function cryptid:action/spider/jumpspider

##############################################################angry AI

##if not slow
execute if entity @s[tag=!cryptid.active] run effect give @s slowness 1 3 true

execute if entity @s[tag=cryptid.active] run damage @s 0 player_attack by @p
execute if entity @s[tag=cryptid.active] run particle minecraft:crimson_spore ~ ~ ~ 2 2 2 0.1 10

execute if entity @s[tag=cryptid.active] run effect give @p[distance=0..1] blindness 2 2 true
execute if entity @s[tag=cryptid.active] run tag @a[distance=0..4] add cryptid.bosschase
execute if entity @s[tag=cryptid.active] run execute as @a[distance=0..7.65] at @s run tag @s add cryptid.glitchscreen
execute if entity @s[tag=cryptid.active] run effect give @s minecraft:speed 3 3 true
execute if entity @p[distance=25..] run tag @s remove cryptid.active
execute if entity @p[distance=25..] run tag @s remove warning




##############RANSDOM

execute store result score @s cryptid.player.random run random value 1..3000
execute if score @s cryptid.player.random matches 10 run execute as @a[distance=0..10] at @s run function cryptid:events/cryptid/mimic
execute if score @s cryptid.player.random matches 1..3 run execute as @a[distance=0..40] at @s run function cryptid:events/cryptid/radiodead 
execute if score @s cryptid.player.random matches 5..20 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..30] ~ ~ ~ 10 1


##KILL
execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if entity @p[distance=70..] if score @s cryptid.player.random matches 1..100 run function cryptid:events/quietkill


tp @s[tag=warning,tag=!cryptid.active] ~ ~ ~ facing entity @p


execute if score .heartbeat cryptid.globalevent matches 1 run effect give @p[distance=0..4] minecraft:slowness 1 3 true

###player damage

damage @p[distance=0..2] 1.3 minecraft:mob_attack by @s

stopsound @a[distance=0..4] player minecraft:entity.player.hurt

