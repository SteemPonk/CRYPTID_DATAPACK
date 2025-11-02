execute if entity @p[distance=5..] run tp @s ^ ^ ^5 facing entity @p
execute if entity @p[distance=2..5] run tp @s ^ ^ ^2 facing entity @p

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:red_concrete replace #minecraft:mineable/axe
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:red_concrete replace #minecraft:mineable/pickaxe
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:red_concrete replace #minecraft:mineable/shovel
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:red_concrete replace #minecraft:mineable/hoe


playsound minecraft:cryptid.heartbeat ambient @a ~ ~ ~ 2 1




damage @p[distance=0..4] 8 minecraft:out_of_world