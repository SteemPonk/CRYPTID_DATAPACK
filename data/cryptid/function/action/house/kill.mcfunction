kill @e[tag=cryptid.fakehouse, type=armor_stand] 
time set noon
tag @a remove cryptid.housewalking
stopsound @a
execute as @a at @s run attribute @s minecraft:generic.jump_strength modifier remove 666