execute store result score @s cryptid.player.random run random value 1..1000



execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run execute at @p rotated as @p run tp @s ^-1 ^-2 ^-15
execute if entity @p[distance=80..] if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill


execute if entity @p[distance=0..50] if score @s cryptid.player.random matches 1..200 run damage @s 0 minecraft:player_attack by @p

execute if score @s cryptid.player.random matches 200..300 run damage @s 0 minecraft:player_attack by @e[sort=random,limit=1]

execute if score @s cryptid.player.random matches 300..350 run playsound minecraft:cryptid.jelly.ambient ambient @a[distance=0..20] ~ ~ ~ 0.1 1.4


#execute if entity @p[distance=0..2] run function cryptid:events/quietkill

execute if entity @p[distance=0..2] run execute as @p at @s run tag @s add cryptid.readytoswap



fill ~1 ~1 ~1 ~-1 ~-1 ~-1 netherrack replace stone

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 red_terracotta replace deepslate


fill ~ ~1 ~ ~ ~-1 ~ nether_wart_block replace #minecraft:mineable/pickaxe

