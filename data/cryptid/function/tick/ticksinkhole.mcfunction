fill ~8 ~8 ~8 ~-8 ~-8 ~-8 netherrack replace #minecraft:base_stone_overworld




##init
execute as @s[tag=!init] run execute store result score @s cryptid.random run random value 1..3
execute as @s[tag=!init] if score @s cryptid.random matches 1 run tag @s add sink.1
execute as @s[tag=!init] if score @s cryptid.random matches 2 run tag @s add sink.2
execute as @s[tag=!init] if score @s cryptid.random matches 3 run tag @s add sink.3

execute as @s[tag=!init] run tag @s add init





##ambient
particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 1








##activate


execute if entity @p[distance=0..30] if score @s cryptid.timer matches ..-400 run function cryptid:action/sinkhole/init
execute if entity @p[distance=0..30] if score @s cryptid.timer matches ..-400 run playsound minecraft:cryptid.digging.ambient ambient @a ~ ~ ~ 0.2 0.5
execute if entity @p[distance=0..30] if score @s cryptid.timer matches ..-400 run particle block_marker{block_state:{Name:red_concrete}} ~ ~1 ~ 2.5 2.5 2.5 0 2

execute if entity @p[distance=45..] if score @s cryptid.timer matches ..-400 run kill @s




execute if score @s cryptid.timer matches ..-1900 run kill @s
