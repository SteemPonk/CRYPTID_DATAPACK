tp @s ~ ~-1000 ~
kill @s
particle minecraft:crimson_spore ~ ~ ~ 0.4 1 0.4 100 4000
execute as @e[distance=0..6] at @s run tp @s ~ ~ ~ facing entity @s

playsound minecraft:cryptid.snap.ambient ambient @a ~ ~ ~ 1 0.8

fill ~ ~-8 ~ ~ ~ ~ air