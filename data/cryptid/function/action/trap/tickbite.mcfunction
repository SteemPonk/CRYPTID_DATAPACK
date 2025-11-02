execute if score @s cryptid.timer matches 2 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1368]
execute if entity @e[tag=trap.trapped, sort=nearest, limit=1, type=player] if score @s cryptid.timer matches -500 run function cryptid:events/quietkill
execute if entity @e[tag=trap.trapped, sort=nearest, limit=1, tag=cryptid] if score @s cryptid.timer matches -500 run function cryptid:events/quietkill

tp @e[tag=trap.trapped, sort=nearest, limit=1] ~ ~ ~