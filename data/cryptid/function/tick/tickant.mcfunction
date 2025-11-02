damage @p[distance=0..7] 1 cryptid:chomp by @s

execute store result score @s cryptid.random run random value 1..400


execute if score @s cryptid.random matches 1..5 run tp @s ~1 ~ ~
execute if score @s cryptid.random matches 10..15 run tp @s ~-1 ~ ~
execute if score @s cryptid.random matches 15..50 run tp @s ~ ~1 ~
execute if score @s cryptid.random matches 20..25 run tp @s ~ ~-1 ~
execute if score @s cryptid.random matches 25..30 run tp @s ~ ~ ~1
execute if score @s cryptid.random matches 30..35 run tp @s ~ ~ ~-1


setblock ~ ~ ~ red_concrete



execute if score @s cryptid.timer matches ..-750 run effect give @p[distance=0..20] minecraft:blindness 5 5 true
execute if score @s cryptid.timer matches ..-750 run playsound minecraft:cryptid.admin.message ambient @p ~ ~ ~ 100 1.2
execute if score @s cryptid.timer matches ..-750 run kill @e[type=!player, distance=0..20]
