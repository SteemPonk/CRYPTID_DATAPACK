summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunkgrass"]}

spreadplayers ~ ~ 70 80 false @e[type=marker,tag=cryptid.chunkgrass, sort=nearest]



execute as @e[type=marker,tag=cryptid.chunkgrass, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 coarse_dirt replace grass_block


execute as @e[type=marker,tag=cryptid.chunkgrass, sort=nearest, limit=1] at @s align xyz at @s run function cryptid:events/general/spawnanomaly


execute as @e[type=marker,tag=cryptid.chunkgrass] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a[distance=0..40] ~ ~ ~ 1 0.5

kill @e[type=marker, tag=cryptid.chunkgrass]