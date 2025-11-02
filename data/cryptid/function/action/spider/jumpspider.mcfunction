effect clear @s minecraft:slowness
damage @s 0 player_attack by @p
execute as @p at @s run tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.spider, sort=nearest, limit=1]
title @p times 0 40 0
title @p title {"text":"\ua018","font":"minecraft:images"}
damage @s 0 minecraft:player_attack by @p[distance=0..7]
execute as @p at @s run playsound minecraft:cryptid.mob.alert ambient @p ~ ~ ~ 1 0.3
tag @s add cryptid.active
tag @s remove warning