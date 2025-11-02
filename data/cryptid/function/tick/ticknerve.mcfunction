execute store result score @s cryptid.player.random run random value 1..2000
execute if score @s cryptid.player.random matches 5 run kill @s

execute if score @s cryptid.player.random matches 7 run execute as @e[tag=cryptid, sort=nearest, limit=10] at @s run damage @s 0 player_attack by @p

execute if score @s cryptid.player.random matches 1..20 run execute at @p run tp @s ~ 200 ~