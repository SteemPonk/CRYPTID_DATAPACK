
execute if entity @s[tag=!flooreye.active] run spreadplayers ~ ~ 5 50 under 500 false @s
execute if entity @s[tag=flooreye.active] run execute at @p run spreadplayers ~ ~ 5 20 under 500 false @s
execute positioned as @s at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
tag @s remove init




##if more
execute if entity @s[tag=flooreye.active] run tag @e[type=husk, tag=cryptid.flooreye, sort=nearest, limit=3] add flooreye.active
