execute store result score @s cryptid.player.random run random value 1..100


execute if score @s cryptid.player.random matches 1..20 run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1]


execute if score @s cryptid.player.random matches 100 run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..10] at @s run effect give @s minecraft:slowness 1

execute if score @s cryptid.player.random matches 1..100 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~1
execute if score @s cryptid.player.random matches 100..200 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s cryptid.player.random matches 200..300 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s cryptid.player.random matches 300..400 run execute as @a[distance=0..10] at @s run tp @s ~ ~ ~ ~-1 ~

playsound minecraft:ambient.nether_wastes.mood ambient @a[distance=0..20] ~ ~ ~ 10 0.1




particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 2220

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:netherrack replace #minecraft:base_stone_overworld
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air
tp @s ^ ^ ^3

