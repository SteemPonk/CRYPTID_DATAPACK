##init1
execute as @s[tag=!init] at @s run tp @s ~ ~-70 ~
execute as @s[tag=!init] at @s run tag @s add init



##look first
execute positioned as @s[tag=!dead] if score @s cryptid.timer matches -80.. run tp @s ~ ~-0.6 ~

execute if score @s[tag=!dead] cryptid.timer matches -80 run function cryptid:boss/action/orb/boom

execute if score @s[tag=dead] cryptid.timer matches 0 run function cryptid:boss/action/orb/kill





##random movement
