$spreadplayers ~ ~ $(min) $(max) under $(underheight) false @s
execute as @s[type=!player] at @s if entity @p[distance=0..50] run function cryptid:events/general/cryptidspawn
