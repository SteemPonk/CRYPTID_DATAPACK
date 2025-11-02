tag @s add cryptid.timer
scoreboard players set @s cryptid.timer 150
execute as @p at @s run playsound minecraft:cryptid.snap.ambient ambient @s
stopsound @a
effect give @p minecraft:slowness 5 5 true
tp @s ~ ~ ~ facing entity @p
execute as @p at @s run tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.spider, sort=nearest, limit=1]
tag @s add warning
tag @p add cryptid.glitchscreen
playsound minecraft:cryptid.temple.attack ambient @p