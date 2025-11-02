tag @s add distorted.active
data merge entity @s {CustomNameVisible:1b}
playsound minecraft:cryptid.mob.alert ambient @a[distance=0..20] ~ ~10 ~ 200 1
effect give @a[distance=0..10] slowness 3 100 true
effect give @s slowness 4 100 true








##check for tree

execute unless entity @e[type=armor_stand, tag=cryptid.tree, distance=0..15] run function cryptid:action/spawntree