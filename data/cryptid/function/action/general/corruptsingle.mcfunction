
execute store result score @s cryptid.random run random value 1..100

## 3 Outcomes of incresing thereat

execute if score @s cryptid.random matches 30..100 run return run function cryptid:action/general/grounddeath

execute if score @s cryptid.random matches 3..30 run return run function cryptid:action/hostile/inithostile

#returns function, unless rolls the 5% chance
#random score of 1..3
tag @s add cryptid.cursed
tag @s add cryptid
tellraw @a[distance=..20] ["",{"text":":)","color":"#990033"}]
execute as @s[type=!player,tag=cryptid.cursed, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcursed"}
execute at @s as @s run tp @s ~ ~ ~ ~ -90