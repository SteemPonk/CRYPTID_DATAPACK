data merge entity @s {NoGravity:1b, Invisible:1b, Marker:1b}
attribute @s minecraft:generic.scale base set 20
execute store result score @s cryptid.player.random run random value 1..5
execute if score @s cryptid.player.random matches 1 run tp @s ~ ~-30 ~
execute if score @s cryptid.player.random matches 2 run tp @s ~ ~-22 ~
execute if score @s cryptid.player.random matches 3 run tp @s ~ ~2 ~
execute if score @s cryptid.player.random matches 4 run tp @s ~ ~14 ~
execute if score @s cryptid.player.random matches 5 run tp @s ~ ~22 ~
tag @s add init
scoreboard players set @s cryptid.mob.class 2




