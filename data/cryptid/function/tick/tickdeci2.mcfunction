

##deci1 ai
execute store result score @s[tag=cryptid.deci2, type=vindicator] cryptid.player.random run random value 1..900


execute if entity @p[distance=80..] run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 10..50 run playsound minecraft:cryptid.cart.ambient ambient @a[distance=0..15] ~ ~ ~ 1 0.1


execute if score @s[tag=cryptid.deci2, type=vindicator] cryptid.player.random matches 5..10 run tp @s ^ ^1 ^2 facing entity @p[distance=0..10]


execute if entity @s[tag=cryptid.deci2, type=vindicator] run execute as @e[distance=0.5..2.5] run damage @s 1 minecraft:cramming by @e[sort=nearest, tag=cryptid.decimator, type=vindicator,limit=1]




effect clear @s minecraft:slowness
effect give @s minecraft:speed 1 3 true

effect give @p[distance=0..2] minecraft:mining_fatigue 3
execute as @p[distance=0..3] at @s run tp @s ~ ~-0.05 ~

execute if score @s cryptid.player.random matches 10..500 run damage @s 0 minecraft:player_attack by @p[distance=0..30]

execute if block ~ ~ ~ water run spreadplayers ~ ~ 10 40 false @s



##end deci2 ai