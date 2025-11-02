damage @p[distance=0..3] 4 cryptid:chomp by @s
effect give @p[distance=0..2] slowness 1 1 true


particle item{item:{id:red_concrete}} ~ ~ ~ 0.3 0.3 0.3 0.2 180
playsound minecraft:entity.wither.hurt ambient @a ~ ~ ~ 0.2 0.1


tp @s ~ ~-100 ~
kill @s