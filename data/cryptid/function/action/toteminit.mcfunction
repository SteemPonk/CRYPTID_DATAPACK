attribute @s minecraft:generic.scale base set 1

playsound minecraft:block.ancient_debris.place ambient @a ~ ~ ~ 1 0.1
particle minecraft:crimson_spore ~ ~2 ~ 0.5 0.5 0.5 1 400

data merge entity @s {HandItems:[{},{id:netherrack,components:{"minecraft:custom_data":{deadsmalltotem:1}},count:1}],HandDropChances:[0f,1f]}

scoreboard players set @s cryptid.totemblood 1
tp @s ~ ~ ~ facing entity @p

function cryptid:action/general/spawntickmarker {"name":"ticktotem"}


tag @s add totemfirst