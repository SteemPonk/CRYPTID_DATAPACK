##random heights
execute store result score @s cryptid.random run random value 1..6

execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=1}] ~ ~-30 ~
execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=2}] ~ ~-40 ~
execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=3}] ~ ~-50 ~
execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=4}] ~ ~-60 ~
execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=5}] ~ ~-70 ~
execute as @s at @s if entity @s[y=40,dy=1000,tag=!heartbuilt] run tp @s[scores={cryptid.random=6}] ~ ~-80 ~
tag @s remove heartbuilt

##add tag

##remove tag if in wrong place

function cryptid:action/heart/fillheart
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #minecraft:base_stone_overworld

execute as @s at @s if block ~ ~-2 ~ air run tag @s remove heartbuilt
execute as @s at @s unless block ~ ~ ~ air run tag @s remove heartbuilt
execute as @s at @s unless block ~ ~1 ~ air run tag @s remove heartbuilt
execute as @s at @s if block ~ ~3 ~ air run tag @s remove heartbuilt
execute as @s at @s if block ~ ~6 ~ water run tag @s remove heartbuilt
execute as @s at @s if block ~ ~-1 ~ water run tag @s remove heartbuilt

##fill if tag


##then give model


