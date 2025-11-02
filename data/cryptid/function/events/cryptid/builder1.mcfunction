summon chicken ~ ~620 ~ {Silent:1, Tags:["cryptid","cryptid.builder"]}

spreadplayers ~ ~ 70 120 false @e[type=chicken,tag=cryptid.builder, sort=nearest, limit=1]


playsound minecraft:cryptid.ambient ambient @a ~40 ~ ~-40 1 0.8



execute as @e[type=chicken, tag=cryptid.builder, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickbuilder"}
execute as @e[type=chicken,tag=cryptid.builder, sort=nearest, limit=1] at @s run playsound minecraft:ambient.cave ambient @p[distance=0..60] ~ ~ ~ 10000 1