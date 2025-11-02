
##lootablehandler
data merge entity @s {DeathLootTable:"cryptid:entities/heart"}
##tphandler


##top or bottom
execute store result score @s cryptid.random run random value 1..2

execute if score @s cryptid.random matches 1 run spreadplayers ~ ~ 30 100 false @n[type=minecraft:vindicator, tag=cryptid.heart]

execute if score @s cryptid.random matches 2 run spreadplayers ~ ~ 30 100 under 0 false @n[type=minecraft:vindicator, tag=cryptid.heart]


execute store result score @s cryptid.random run random value 1..6


##random heights
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=1}] ~ ~-30 ~
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=2}] ~ ~-40 ~
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=3}] ~ ~-50 ~
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=4}] ~ ~-60 ~
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=5}] ~ ~-70 ~
execute as @s at @s if entity @s[y=40,dy=1000] run tp @s[scores={cryptid.random=6}] ~ ~-80 ~

##then, fill
#function cryptid:action/heart/fillheart


##just in case~
effect give @s minecraft:invisibility infinite 1 true


##end init
tag @s add startedheart