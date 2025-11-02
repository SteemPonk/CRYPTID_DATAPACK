execute if entity @p[distance=0..2] run damage @p[distance=0..2] 6 cryptid:chomp by @s
execute as @p[distance=0..2] at @s run function cryptid:action/player/corruptitem

particle item{item:{id:red_concrete}} ~ ~1 ~ 0.3 0.3 0.3 0.3 100
playsound minecraft:entity.wither.hurt ambient @a ~ ~ ~ 0.2 0.1
tp @s ~ ~-100 ~
kill @s