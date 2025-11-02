
execute as @s[tag=!init] at @r run tp @s @e[distance=5..20, type=!player, sort=random, limit=1]
execute as @s[tag=!init] at @r if entity @e[distance=5..20, type=!player, sort=random, limit=1] run tag @s add init



execute store result score @s cryptid.player.random run random value 1..10000

execute positioned as @s if entity @s[tag=init] if entity @p[distance=50..] run function cryptid:events/quietkill




##lights


execute if entity @s[scores={cryptid.player.random=11..15}] if entity @p[distance=0..10] run function cryptid:action/shylight


execute if entity @s[scores={cryptid.player.random=1..10}] run function cryptid:action/shy2/corrupt
execute if entity @s[scores={cryptid.player.random=1..10}] run function cryptid:events/quietkill


execute if entity @s[scores={cryptid.player.random=20..35}] run playsound minecraft:ambient.cave ambient @a[distance=1..20] ~ ~ ~ 1 0.5

execute if entity @s[scores={cryptid.player.random=20..40}] run damage @e[sort=random, distance=1..20,limit=1] 4 minecraft:starve by @s



execute if entity @s[scores={cryptid.player.random=1000..1020}] run function cryptid:events/quietkill

