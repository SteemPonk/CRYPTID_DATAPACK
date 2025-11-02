stopsound @s * minecraft:entity.firework_rocket.launch
stopsound @s player minecraft:item.crossbow.shoot


execute if score @s cryptid.shotguntimer matches 0 if score @s cryptid.shotgunammo matches 0 run scoreboard players set @s cryptid.shotguntimer 80
execute if score @s cryptid.shotguntimer matches 0 if score @s cryptid.shotgunammo2 matches 0 run scoreboard players set @s cryptid.shotguntimer 80
execute if score @s cryptid.shotguntimer matches 0 if score @s cryptid.shotgunammo3 matches 0 run scoreboard players set @s cryptid.shotguntimer 80

execute if score @s cryptid.shotguntimer matches 9 run playsound minecraft:cryptid.shotreload ambient @a[distance=0..4] ~ ~ ~ 1 0.8

scoreboard players remove @s[scores={cryptid.shotguntimer=1..}] cryptid.shotguntimer 1
execute if score @s cryptid.shotguntimer matches 1 if score @s cryptid.shotgunammo matches 0 run scoreboard players set @s cryptid.shotgunammo 1
execute if score @s cryptid.shotguntimer matches 1 if score @s cryptid.shotgunammo2 matches 0 run scoreboard players set @s cryptid.shotgunammo2 2
execute if score @s cryptid.shotguntimer matches 1 if score @s cryptid.shotgunammo3 matches 0 run scoreboard players set @s cryptid.shotgunammo3 4

tag @s add shootingun