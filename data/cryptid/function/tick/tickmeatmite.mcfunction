execute store result score @s cryptid.player.random run random value 1..40

setblock ~ ~-1 ~ minecraft:red_concrete
execute if score @s cryptid.player.random matches 1..8 run place feature cryptid:convertfleshsmall

execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill