effect give @s minecraft:speed infinite 2 true
effect give @s minecraft:invisibility infinite 2 true


effect give @p[distance=0..1.5] minecraft:nausea 1 2 true
effect give @p[distance=0..1.5] minecraft:slowness 1 2 true



execute if entity @p[distance=40..] run execute store result score @s cryptid.player.random run random value 1..5000

execute if score @s cryptid.player.random matches 5 run function cryptid:events/cryptid/stalker1
execute if score @s cryptid.player.random matches 5 run kill @s