execute store result score @s cryptid.player.random run random value 1..10


execute if score @s cryptid.player.random matches 1 run item modify entity @s weapon.mainhand cryptid:glitchtool
execute if score @s cryptid.player.random matches 2 run item modify entity @s weapon.mainhand cryptid:glitchtool2
execute if score @s cryptid.player.random matches 3 run item modify entity @s weapon.mainhand cryptid:glitchtool3
execute if score @s cryptid.player.random matches 4 run item modify entity @s weapon.mainhand cryptid:glitchtool4
execute if score @s cryptid.player.random matches 5 run item modify entity @s weapon.mainhand cryptid:glitchtool5
execute if score @s cryptid.player.random matches 6 run item modify entity @s weapon.mainhand cryptid:glitchtool6
execute if score @s cryptid.player.random matches 5..10 run fillbiome ~3 ~3 ~3 ~-3 ~-3 ~-3 cryptid:empty

playsound minecraft:cryptid.screen.corrupted ambient @s

execute as @e[distance=1..30] at @s run tp @s ~ ~ ~ facing entity @p
time add 4000