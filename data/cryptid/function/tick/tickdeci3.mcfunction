##deci1 ai
execute store result score @s[tag=cryptid.deci3, type=vindicator] cryptid.player.random run random value 1..1300
execute if score @s cryptid.player.random matches 1 run execute as @a[distance=0..10] at @s run function cryptid:events/cryptid/radiodead


execute if entity @p[distance=80..] run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 10..50 run playsound minecraft:cryptid.cart.ambient ambient @a[distance=0..15] ~ ~ ~ 1 0.1


execute if score @s[tag=cryptid.deci3, type=vindicator] cryptid.player.random matches 5..10 run tp @s ^ ^1 ^2 facing entity @p[distance=0..10]


execute if entity @s[tag=cryptid.deci3, type=vindicator] run execute as @e[distance=0.5..2.5] run damage @s 1 minecraft:cramming by @e[sort=nearest, tag=cryptid.decimator, type=vindicator,limit=1]






##levitation




execute if score @s cryptid.player.random matches 1..8 run effect give @e[distance=3..15, tag=!cryptid] minecraft:levitation 1 70 false
execute if score @s cryptid.player.random matches 1..8 run execute as @a[distance=0..15] run attribute @s minecraft:generic.gravity modifier add 1301 0.25 add_value
execute if score @s cryptid.player.random matches 1..8 run execute as @a[distance=0..15] run attribute @s minecraft:generic.fall_damage_multiplier modifier add 1301 0.2 add_value
execute if score @s cryptid.player.random matches 1..8 run execute as @a[distance=0..15] run attribute @s minecraft:generic.fall_damage_multiplier modifier add 1301 0.2 add_value
execute if score @s cryptid.player.random matches 1..8 run playsound minecraft:cryptid.temple.attack ambient @a[distance=0..20] ~ ~ ~ 1 1.2
execute if score @s cryptid.player.random matches 1..8 run particle minecraft:ominous_spawning ~ ~ ~ 2 5 2 0.5 5000





effect give @p[distance=0..3] minecraft:mining_fatigue 3
execute as @p[distance=0..3] at @s run effect give @s blindness 1 1 true

execute if score @s cryptid.player.random matches 10..500 run damage @s 0 minecraft:player_attack by @p[distance=0..30]


execute if block ~ ~ ~ water run spreadplayers ~ ~ 10 40 false @s

execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.mimic ambient @a[distance=0..30] ~ ~ ~ 10 1




##end deci3 ai