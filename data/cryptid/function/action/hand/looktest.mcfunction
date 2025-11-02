execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1..30 run tag @s add cryptid.glitchscreen

execute if score @s cryptid.player.random matches 40..80 run tag @s add cryptid.fearscreen

execute if score @s cryptid.player.random matches 1..5 run execute as @e[tag=cryptid.hand, type=vindicator, sort=nearest, limit=1] at @s run function cryptid:action/hand/jump

execute if score @s cryptid.player.random matches 1..5 run damage @e[tag=cryptid.hand, type=vindicator, sort=nearest, limit=1] 0 player_attack by @p

execute if score @s cryptid.player.random matches 1..5 run data merge entity @e[tag=cryptid.hand, type=vindicator, sort=nearest, limit=1] {NoAI:1}


execute if score @s cryptid.player.random matches 1..5 run tag @e[tag=cryptid.hand, type=vindicator, sort=nearest, limit=1] add hand.chase
