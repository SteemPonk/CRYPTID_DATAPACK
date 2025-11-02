execute positioned ~ ~5 ~ run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air
tag @a remove player.tutorial
tag @a remove tutorial.active
execute as @a[distance=0..10] at @s run execute positioned over world_surface run tp @s ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=cryptid.spawnbox]
time set noon