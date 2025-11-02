execute as @s store result score @s cryptid.random run random value 1..800


execute if score @s cryptid.random matches 1 run playsound minecraft:cryptid.deep.vibrate ambient @a ~ ~ ~ 2 0.6
execute if score @s cryptid.random matches 2 run playsound minecraft:cryptid.crawler.ambient ambient @a ~ ~ ~ 2 0.6
execute if score @s cryptid.random matches 3 run playsound minecraft:cryptid.lamp.ambient ambient @a ~ ~ ~ 2 0.6
execute if score @s cryptid.random matches 4 run function cryptid:events/cryptid/flicker5

