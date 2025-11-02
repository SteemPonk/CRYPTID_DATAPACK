stopsound @p
tag @s add angry
tag @p add cryptid.glitchscreen
playsound minecraft:cryptid.snap.ambient ambient @a
playsound minecraft:cryptid.crawler.anger ambient @a ~ ~ ~ 10 1.1
tp @s ~ ~ ~ facing entity @p
scoreboard players set @s cryptid.timer 2000

title @a[distance=0..25] actionbar {"text":"I haven't tasted flesh in so long.","color":"dark_red"}

data merge entity @s {DeathLootTable:"minecraft:empty"}
