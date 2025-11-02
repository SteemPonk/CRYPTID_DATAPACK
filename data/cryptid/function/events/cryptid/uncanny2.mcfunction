effect give @s minecraft:slowness 1 2 true
execute as @e[distance=1..50, type=!player] at @s run function cryptid:action/spawnflower
playsound minecraft:cryptid.ambience.foreboding ambient @a ~ ~ ~1000 100 0.8