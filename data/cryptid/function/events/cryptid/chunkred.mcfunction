summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunkred"]}

spreadplayers ~ ~ 70 80 false @e[type=marker,tag=cryptid.chunkred, sort=nearest]



execute as @e[type=marker,tag=cryptid.chunkred, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 minecraft:netherrack replace #minecraft:base_stone_overworld




execute as @e[type=marker,tag=cryptid.chunkred] at @s run playsound minecraft:ambient.cave ambient @a[distance=0..60] ~ ~ ~ 10000 1

kill @e[type=marker, tag=cryptid.chunkred]