tp @s ~ ~ ~ facing entity @e[sort=random,limit=1]


execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..10 run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..10] at @s run effect give @s minecraft:slowness 1

execute if score @s cryptid.player.random matches 1..100 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~1
execute if score @s cryptid.player.random matches 100..200 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s cryptid.player.random matches 200..300 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s cryptid.player.random matches 300..400 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~-1 ~

playsound cryptid.earth.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.1




particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 20

execute positioned ^ ^ ^6 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:red_terracotta replace #minecraft:base_stone_overworld


execute if score @s cryptid.player.random matches 200..250 run execute positioned ^ ^ ^3 run function cryptid:action/meatmitestart

execute if score @s cryptid.player.random matches 250..300 run execute positioned ^ ^ ^6 run function cryptid:action/meatmitestart

execute if score @s cryptid.player.random matches 300..350 run execute positioned ^ ^ ^8 run function cryptid:action/meatmitestart


execute store result score @s cryptid.player.random run random value 1..10000

execute if score @s cryptid.player.random matches 1 run execute as @e[distance=1..20, sort=random, limit=1] at @s run function cryptid:events/general/spawnmouth
