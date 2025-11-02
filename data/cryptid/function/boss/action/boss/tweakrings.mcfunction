function cryptid:boss/spawn/spawnexplosion
execute as @e[type=zombie, tag=boss.ring] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
effect give @a[distance=0..50] blindness 2 2 true

execute as @p[distance=0..12] at @s run function cryptid:action/player/corruptitem