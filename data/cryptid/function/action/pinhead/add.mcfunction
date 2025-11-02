tag @s add looking






##change state randomly

execute store result score @s cryptid.player.random run random value 1..60

execute if score @s cryptid.player.random matches 1 run tag @s add pinhead.closer