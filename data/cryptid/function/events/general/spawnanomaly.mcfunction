summon minecraft:armor_stand ~ ~ ~ {CustomName:'[{"text":"Anomaly"}]',NoGravity:1, Invisible:1, Tags:["cryptid","cryptid.anomaly"]}

execute as @e[type=armor_stand, tag=cryptid.anomaly] at @s run scoreboard players set @s cryptid.mob.class 1

execute as @e[type=armor_stand, tag=cryptid.anomaly, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickanomaly"}
