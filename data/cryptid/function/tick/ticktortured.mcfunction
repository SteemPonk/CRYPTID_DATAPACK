execute store result score @s cryptid.player.random run random value 1..7

item replace entity @s armor.head with air
execute if score @s cryptid.player.random matches 1 run item replace entity @s armor.head with potion[custom_model_data=1361]


##damage
tag @a[distance=0..3] add cryptid.glitchscreen
damage @a[distance=0..3, sort=nearest, limit=1] 2.5 minecraft:generic by @s
stopsound @a[distance=0..3, sort=nearest, limit=1]

execute store result score @s cryptid.player.random run random value 1..15000

execute if score @s cryptid.player.random matches 2..100 run effect give @s speed 5 5 true

##special
execute as @a[distance=0..30] at @s as @e[distance=1..10, type=!player, tag=!cryptid] at @s run tp @s ~ ~ ~ facing entity @p


##random
execute if score @s cryptid.player.random matches 50..100 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.player.random matches 150..200 run function cryptid:events/cryptid/flicker4
execute if score @s cryptid.player.random matches 50..200 run function cryptid:events/cryptid/sethostile

##sound
execute if score @s cryptid.player.random matches 500..600 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..40] ~ ~ ~ 0.5 0.1
execute if score @s cryptid.player.random matches 100..600 run damage @s 0 minecraft:player_attack by @p


##death
execute if score @s cryptid.player.random matches 1 run fillbiome ~3 ~3 ~3 ~-3 ~-3 ~-3 cryptid:empty
execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if entity @p[distance=120..] run function cryptid:events.quietkill

##fill
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace minecraft:torch
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace minecraft:wall_torch
