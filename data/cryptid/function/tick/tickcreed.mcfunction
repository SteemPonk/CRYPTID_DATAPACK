execute store result score @s cryptid.player.random run random value 1..8000


execute if entity @p[distance=0..7] run tp @s ~ ~ ~ facing entity @p
execute if entity @p[distance=0..3] run damage @p 0.5 minecraft:cramming by @s
tag @p[distance=0..6] add cryptid.blackscreen

scoreboard players remove @p[distance=0..20] cryptid.player.harmony 2

execute if score @s cryptid.player.random matches 1 run execute as @e[type=vindicator, tag=cryptid.creed] at @s run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 2..4 run playsound minecraft:ambient.cave ambient @a[distance=0..30] ~ ~ ~ 1 0.6


execute if score @s cryptid.player.random matches 40..41 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 stone replace #minecraft:mineable/pickaxe
execute if score @s cryptid.player.random matches 40..41 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 stone replace #minecraft:mineable/shovel
execute if score @s cryptid.player.random matches 40..41 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 stone replace #minecraft:mineable/axe
execute if score @s cryptid.player.random matches 40..41 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 stone replace #minecraft:mineable/hoe
execute if score @s cryptid.player.random matches 40..41 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 stone replace #minecraft:leaves




execute if score @s cryptid.player.random matches 20..40 run playsound minecraft:ambient.cave ambient @a[distance=0..30] ~ ~ ~ 1 0.6
execute if score @s cryptid.player.random matches 20..40 run data merge entity @e[distance=1..4, sort=nearest, limit=1] {NoAI:1}



execute if entity @s[tag=cryptid.lookingcreed] run tp @s ~ ~ ~ facing entity @p
tag @s remove cryptid.lookingcreed