tellraw @a[distance=5..30] {"text":"That's a nice chunk. I think i'll take it.","color":"red"}


summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunkerror"]}

spreadplayers ~ ~ 70 80 false @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1]



execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 air


execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s align xyz at @s run function cryptid:events/general/spawnanomaly

execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s run playsound minecraft:ambient.cave ambient @p[distance=0..60] ~ ~ ~ 10000 1

kill @e[type=marker, tag=cryptid.chunkerror]