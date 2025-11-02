execute store result score @s cryptid.player.random run random value 1..10000

$execute if score @s cryptid.player.random matches 1..$(random) if entity @p[distance=$(distance)..] run function cryptid:events/quietkill