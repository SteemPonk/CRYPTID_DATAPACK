tp @s ^ ^ ^0.2

execute if entity @p[distance=300..] run kill @s

##kill and activate

execute store result score @s cryptid.player.random run random value 1..10000
execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if entity @p[distance=100..] if score @s cryptid.player.random matches 1..100 run function cryptid:events/quietkill

##add effects

tag @a[distance=0..120] add cryptid.blackscreen
execute if entity @p[distance=0..120] if score @s cryptid.player.random matches 1..20 run function cryptid:events/sky/roamingentity
execute if entity @p[distance=0..120] if score @s cryptid.player.random matches 20..40 run function cryptid:events/sky/octopus
execute if entity @p[distance=0..120] if score @s cryptid.player.random matches 40..60 run function cryptid:events/sky/ray
execute if entity @p[distance=0..120] if score @s cryptid.player.random matches 1..40 run function cryptid:events/quietkill










execute store result score @s cryptid.player.random run random value 1..1000