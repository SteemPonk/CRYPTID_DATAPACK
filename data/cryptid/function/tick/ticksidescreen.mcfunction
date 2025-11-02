tp @s ^ ^ ^0.75 facing entity @p


execute if entity @p[distance=0..0.5] run damage @p 1 minecraft:fall by @s
execute if entity @p[distance=0..0.5] run execute as @p at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute if entity @p[distance=0..0.5] run playsound minecraft:cryptid.jelly.ambient ambient @a[distance=0..2]
execute if entity @p[distance=0..0.5] run kill @s
execute if entity @p[distance=8..] run kill @s