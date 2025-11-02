##kill once done
kill @s[scores={cryptid.timer=..0}]


##spawner1
execute if score @s[tag=spawner.1] cryptid.timer matches 100 run playsound minecraft:ambient.cave ambient @a[distance=0..90] ~ ~ ~ 10 0.5
execute if score @s[tag=spawner.1] cryptid.timer matches 1..220 run stopsound @p[distance=1..30]
##spawner2
execute if score @s[tag=spawner.2] cryptid.timer matches 100 run playsound cryptid.ambient ambient @a[distance=0..90] ~ ~ ~ 10 0.5
execute if score @s[tag=spawner.2] cryptid.timer matches 1..220 run particle block_marker{block_state:{Name:nether_wart_block}} ~ ~ ~ 5 5 5 0 10
##spawner3
execute if score @s[tag=spawner.3] cryptid.timer matches 100 run playsound minecraft:ambient.crimson_forest.additions ambient @a[distance=0..90] ~ ~ ~ 10 0.5
execute if score @s[tag=spawner.3] cryptid.timer matches 1..220 run execute as @p[distance=1..30] at @s run execute as @e[distance=1..10] at @s run tp @s ~ ~ ~ facing entity @p
##spawner4
execute if score @s[tag=spawner.4] cryptid.timer matches 100 run playsound minecraft:ambient.crimson_forest.additions ambient @a[distance=0..90] ~ ~ ~ 10 0.5
execute if score @s[tag=spawner.4] cryptid.timer matches 1..220 run execute as @p[distance=1..30] at @s run tag @s add cryptid.blackscreen
##spawner5
execute if score @s[tag=spawner.5] cryptid.timer matches 100 run playsound minecraft:ambient.crimson_forest.additions ambient @a[distance=0..90] ~ ~ ~ 10 0.5
execute if score @s[tag=spawner.5] cryptid.timer matches 1..220 run execute as @p[distance=1..30] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace torch

