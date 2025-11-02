summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunkleaves"]}

spreadplayers ~ ~ 70 80 false @e[type=marker,tag=cryptid.chunkleaves, sort=nearest]



execute as @e[type=marker,tag=cryptid.chunkleaves, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 minecraft:netherrack replace #minecraft:leaves


execute as @e[type=marker,tag=cryptid.chunkleaves, sort=nearest, limit=1] at @s align xyz at @s run function cryptid:events/general/spawnanomaly

execute as @e[type=marker,tag=cryptid.chunkleaves] at @s run playsound minecraft:ambient.cave ambient @p[distance=0..60] ~ ~ ~ 10000 1

kill @e[type=marker, tag=cryptid.chunkleaves]