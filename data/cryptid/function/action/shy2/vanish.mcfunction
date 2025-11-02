execute as @e[tag=cryptid.shy2, sort=nearest, type=villager, limit=1] at @s run tp @s ~ -100 ~
execute as @e[tag=cryptid.shy2, sort=nearest, type=villager, limit=1] at @s run particle minecraft:campfire_signal_smoke ~ ~2 ~ 1 1 1 0.001 400

kill @e[tag=cryptid.shy2, sort=nearest, type=villager, limit=1]

playsound minecraft:entity.player.small_fall ambient @a ~ ~ ~ 2 0.7


tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
playsound minecraft:cryptid.snap.ambient ambient @a ~ ~ ~
effect give @s minecraft:blindness 1
tag @s add cryptid.fakescreen