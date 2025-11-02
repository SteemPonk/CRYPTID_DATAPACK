execute store result score @s cryptid.random run random value 1..3


execute if score @s cryptid.random matches 1 facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^40 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb

scoreboard players remove @s boss.orbspawner 1
