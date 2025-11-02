summon minecraft:marker ~ 400 ~ {Tags:["cryptid.worldshift"]}
execute as @e[type=marker, tag=cryptid.worldshift] at @s run spreadplayers ~ ~ 60 40 false @s
execute as @e[type=marker, tag=cryptid.worldshift] at @s run function cryptid:action/worldshift/shift
