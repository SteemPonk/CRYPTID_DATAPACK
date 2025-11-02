
execute if entity @a[distance=0..2.5] run tag @s add cryptid.eyeseen



scoreboard players remove @s cryptid.range 1

execute if score @s cryptid.range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^1 run function cryptid:tick/tickeyeraycast
