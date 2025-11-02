execute at @p positioned ^ ^ ^2.5 run tp @s ~ ~ ~ facing entity @p

playsound minecraft:cryptid.jumpscare1 ambient @p ~ ~ ~ 1 0.1


tag @s add cryptid.timer

tag @p add cryptid.glitchscreen
damage @p 8 cryptid:chomp by @s