execute unless entity @e[type=vindicator, distance=0..5, tag=cryptid.dopple] run scoreboard players remove @s cryptid.timer 1
execute unless entity @e[type=vindicator, distance=0..5, tag=cryptid.dopple] run scoreboard players set @s cryptid.timer 0

execute if score @s cryptid.timer matches -20.. run tag @s add dead
execute if score @s cryptid.timer matches -20.. run kill @s



