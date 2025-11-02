##init1
execute as @s[tag=!init] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[tag=!init] at @s run tag @s add init

###move



tp @s ^ ^ ^0.3




##damage



execute as @a[distance=0..12] at @s run damage @s 5 cryptid:chomp by @e[tag=boss.superskull, type=zombie, sort=nearest, limit=1]



##death
execute if score @s cryptid.timer matches -400 run tp @s ~ ~-100 ~
execute if score @s cryptid.timer matches -400 run kill @s



##particle

particle minecraft:sculk_soul ~ ~15 ~ 4 4 4 0.1 100