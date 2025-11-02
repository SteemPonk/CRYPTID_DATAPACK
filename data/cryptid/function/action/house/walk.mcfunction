scoreboard players remove .house cryptid.timer 1


tag @s remove cryptid.blackscreen

execute if score .house cryptid.timer matches -350 run function cryptid:action/house/kill

###rotate
execute as @e[tag=cryptid.fakehouse, type=armor_stand] at @s run tp @s ~ ~ ~ ~0.4 ~



execute store result score @s cryptid.random run random value 1..12

execute if score @s cryptid.random matches 1 run title @s title {"text":"\ua057","font":"minecraft:images"}
execute if score @s cryptid.random matches 2 run title @s title {"text":"\ua058","font":"minecraft:images"}
execute if score @s cryptid.random matches 3 run title @s title {"text":"\ua059","font":"minecraft:images"}
execute if score @s cryptid.random matches 4 run title @s title {"text":"\ua060","font":"minecraft:images"}

