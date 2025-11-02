execute as @s[tag=!init] at @s run spreadplayers ~ ~ 10 60 false @s
execute as @s[tag=!init] positioned as @s rotated as @s run tp @s ~ ~30 ~
execute as @s[tag=!init] positioned as @s rotated as @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute as @s[tag=!init] positioned as @s rotated as @s run tp @s ~ ~ ~ ~ 0
execute as @s[tag=!init] positioned as @s rotated as @s run tag @s add cryptid.timer
execute as @s[tag=!init] at @s run tag @s add init





##movement off the balll


execute positioned as @s run tp @s ^ ^ ^0.2



execute if entity @p[distance=300..] run kill @s[tag=init]


execute if score @s cryptid.timer matches ..-1000 run execute store result score @s cryptid.random run random value 1..700


execute if score @s cryptid.random matches 1..4 run kill @s[scores={cryptid.timer=..-1000}]

execute if score @s cryptid.random matches 1 run execute at @p[distance=0..100] at @s run function cryptid:events/cryptid/tortured
execute if score @s cryptid.random matches 2 run execute at @p[distance=0..100] at @s run function cryptid:events/cryptid/chomper
execute if score @s cryptid.random matches 3 run execute at @p[distance=0..100] at @s run function cryptid:events/cryptid/pinhead
execute if score @s cryptid.random matches 3 run execute at @p[distance=0..100] at @s run function cryptid:events/sky/octopus

