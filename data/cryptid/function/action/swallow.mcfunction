execute if entity @s[type=player] run function cryptid:action/spawnflower
playsound minecraft:cryptid.curator.ambient ambient @s ~ ~ ~ 12 1
tp @s @e[tag=cryptid.vorheart, sort=nearest, type=vindicator, limit=1]
title @s title {"text":"\ua013","font":"minecraft:images"}
