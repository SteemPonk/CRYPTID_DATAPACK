
execute store result score @s cryptid.player.random run random value 1..50
tp @s ~ ~ ~ facing entity @e[sort=random,limit=1,distance=1..60]

execute if entity @p[distance=0..12] at @s run playsound minecraft:entity.zoglin.death ambient @p ~ ~ ~ 1 0.1
execute if entity @p[distance=0..12] at @s run function cryptid:events/quietkill


kill @e[type=item, distance=0..40]

execute as @s[scores={cryptid.player.random=0..10}] at @s run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-1 ~3 ~-2 replace force
execute as @s[scores={cryptid.player.random=10..20}] at @s run clone ~-1 ~-2 ~-2 ~2 ~2 ~2 ~2 ~1 ~1 replace force
execute as @s[scores={cryptid.player.random=20..30}] at @s run clone ~-6 ~-1 ~-6 ~6 ~6 ~6 ~-4 ~-1 ~2 replace force
execute as @s[scores={cryptid.player.random=30..40}] at @s run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-1 ~-1 replace force
execute as @s[scores={cryptid.player.random=40..50}] at @s run clone ~-4 ~-3 ~-4 ~4 ~4 ~4 ~1 ~1 ~-3 replace force
execute as @s[scores={cryptid.player.random=50..60}] at @s run clone ~-4 ~4 ~-4 ~4 ~4 ~ ~1 ~1 ~1 replace force