execute store result score @s cryptid.player.random run random value 1..17

execute if score @s cryptid.player.random matches 2 run setblock ~ ~-1 ~ netherrack
