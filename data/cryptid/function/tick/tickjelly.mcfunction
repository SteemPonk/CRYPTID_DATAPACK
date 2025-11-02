execute store result score @s cryptid.player.random run random value 1..5000
execute if score @s[tag=jelly2] cryptid.player.random matches 1..20 run execute at @p[distance=0..30] positioned ^ ^2 ^-15 run tp @s ~ ~ ~
fill ~1 ~4 ~1 ~-1 ~-1 ~-1 air
execute if score @s cryptid.player.random matches 1..2 run execute as @a[distance=0..20] at @s run function cryptid:events/cryptid/radiodead


execute if entity @p[distance=110..] run function cryptid:events/quietkill


execute if entity @s[tag=jelly3] run execute as @e[distance=1..30] at @s anchored eyes facing entity @e[type=vindicator, tag=cryptid.jelly, sort=nearest, limit=1] eyes positioned ^ ^ ^2.4 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-5 positioned as @s run tp @s ^ ^ ^0.55 ~ ~


execute if entity @s[tag=jelly3] run tp @s ^ ^ ^0.5 facing entity @p


execute if entity @s[tag=jelly3] run execute as @e[distance=2..30] at @s run particle dust_color_transition{from_color:[0.87,0.45,0.49],to_color:[0.46,0.0,0.11],scale:4} ~ ~1 ~ 1.5 1.5 1.5 1 10 force

execute if entity @s[tag=jelly3] run execute as @e[distance=2..30] at @s run effect give @s slow_falling 1 1

execute if entity @s[tag=jelly3] run execute as @e[distance=2..30] at @s run effect give @s wither 1 1


execute if entity @s[tag=jelly3] run execute as @a[distance=0..2] at @s run summon tnt
execute if entity @s[tag=jelly3] run execute if entity @a[distance=0..2] run kill @s