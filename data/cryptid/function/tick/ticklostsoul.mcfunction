tp @s ~ ~0.15 ~

execute if score @s cryptid.timer matches 2 run stopsound @a
execute if score @s cryptid.timer matches 2 run execute as @p at @s run function cryptid:events/cryptid/spawntank
execute if score @s cryptid.timer matches 2 run kill @e[type=armor_stand, tag=cryptid.lostsoul]

