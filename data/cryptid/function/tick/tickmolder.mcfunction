execute store result score @s cryptid.player.random run random value 1..200

damage @s 0 minecraft:player_attack by @p

execute if score @s cryptid.player.random matches 1..5 run function cryptid:action/mold/spawnfloormold



execute if score @s cryptid.player.random matches 2 run kill @s