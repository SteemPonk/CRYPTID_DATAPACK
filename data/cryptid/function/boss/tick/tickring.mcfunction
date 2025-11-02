execute as @s[tag=!init] at @s run tp @s ~ ~1.3 ~ facing entity @e[sort=random, limit=1]
execute as @s[tag=!init] at @s run tag @s add init


execute positioned as @s rotated as @s run tp @s ~ ~ ~ ~3 ~

