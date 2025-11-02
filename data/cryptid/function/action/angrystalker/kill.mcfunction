
execute store result score @s cryptid.player.random run random value 1..2






execute unless entity @p[distance=0..50] run kill @s
execute unless entity @p[distance=0..50] run kill @e[type=armor_stand, tag=cryptid.glitchdemo]
