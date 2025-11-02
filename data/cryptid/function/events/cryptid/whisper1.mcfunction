playsound minecraft:cryptid.ambient.wisp ambient @s

effect give @s minecraft:darkness 4 1 true



execute store result score @s cryptid.random run random value 1..4

execute if score @s cryptid.random matches 1 run function cryptid:events/cryptid/mimic
execute if score @s cryptid.random matches 2 run function cryptid:events/cryptid/flicker2
