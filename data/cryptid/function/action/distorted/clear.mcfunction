tag @s remove cryptid
tag @s remove cryptid.timer
tag @s remove distorted.active
tag @s remove cryptid.distorted
scoreboard players reset @s cryptid.timer
kill @e[type=marker, tag=cryptid, tag=cryptid.tickmarker, sort=nearest, limit=1]
stopsound @p
data merge entity @s {CustomName:'[{"text":""}]'}
data merge entity @s {CustomNameVisible:0b}
attribute @s minecraft:generic.scale base set 1
