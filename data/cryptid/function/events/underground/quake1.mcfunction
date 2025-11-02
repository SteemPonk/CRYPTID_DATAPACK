summon minecraft:armor_stand ~ ~-4 ~ {Invisible:1, Tags:["cryptid","cryptid.quake"]}

particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 5200

playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~ ~-10 ~ 10 0.2

execute as @e[type=armor_stand, tag=cryptid.quake, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickquake"}

