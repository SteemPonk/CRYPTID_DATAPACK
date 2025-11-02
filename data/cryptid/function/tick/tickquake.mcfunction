tp @s ~ ~ ~ facing entity @r


execute store result score @s cryptid.player.random run random value 1..600

execute if score @s cryptid.player.random matches 1..2 run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..10] at @s run effect give @s minecraft:slowness 1



execute if score @s cryptid.player.random matches 1..40 run tp @s ^ ^ ^2 facing entity @p

execute if score @s cryptid.player.random matches 1..100 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~1
execute if score @s cryptid.player.random matches 100..200 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s cryptid.player.random matches 200..300 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s cryptid.player.random matches 300..400 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~-1 ~

playsound minecraft:ambient.nether_wastes.mood ambient @a[distance=0..30] ~ ~ ~ 10 0.1




particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 220

execute positioned ^ ^ ^6 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:netherrack replace #minecraft:base_stone_overworld


