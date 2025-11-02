execute store result score @s cryptid.player.random run random value 1..6


execute if score @s cryptid.player.random matches 1 run summon minecraft:zombified_piglin

execute if score @s cryptid.player.random matches 2 run function cryptid:events/cryptid/stalker1

execute if score @s cryptid.player.random matches 3 run function cryptid:events/cryptid/shy1

execute if score @s cryptid.player.random matches 4 run function cryptid:events/cryptid/shy2

execute if score @s cryptid.player.random matches 5 run function cryptid:events/cryptid/skinned1

execute if score @s cryptid.player.random matches 6 run function cryptid:events/underground/threat1

tp @e[tag=cryptid, sort=nearest, limit=1] @s