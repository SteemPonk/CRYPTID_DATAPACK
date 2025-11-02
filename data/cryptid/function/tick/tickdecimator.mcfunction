

##deci1 ai
execute store result score @s[tag=cryptid.deci1, type=piglin] cryptid.player.random run random value 1..900

execute if score @s[tag=cryptid.deci1, type=piglin] cryptid.player.random matches 1..5 run playsound minecraft:entity.zoglin.angry ambient @a[distance=0..20] ~ ~ ~ 1 0.5

execute if score @s[tag=cryptid.deci1, type=piglin] cryptid.player.random matches 5..10 run tp @s ^ ^1 ^2 facing entity @p[distance=0..10]


execute if entity @s[tag=cryptid.deci1, type=piglin] run execute as @e[distance=0.5..2.5] run damage @s 1 minecraft:cramming by @e[sort=nearest, tag=cryptid.decimator, type=piglin,limit=1]


execute if entity @s[tag=cryptid.ballchasing] run tp @e[distance=0.5..2.5] @s

execute if entity @p[distance=5..20] if score @s cryptid.player.random matches 2..5 run tag @s add cryptid.ballchasing
execute if entity @p[distance=5..20] if score @s cryptid.player.random matches 2..5 run playsound minecraft:cryptid.cloud.ambience ambient @a[distance=0..30]



execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 20..52 run tag @s remove cryptid.ballchasing


execute if entity @s[nbt={HurtTime:9s}] run tag @s add cryptid.ballchasing

effect give @s[tag=cryptid.ballchasing] minecraft:speed infinite 3 true

effect clear @s[tag=!cryptid.ballchasing] minecraft:speed
effect clear @s[tag=cryptid.ballchasing] minecraft:slowness
effect give @s[tag=!cryptid.ballchasing] minecraft:slowness infinite 255 true



damage @s[tag=!cryptid.ballchasing] 0 minecraft:mob_attack by @e[sort=random,limit=1,type=!player]


execute unless block ~ ~ ~ air run setblock ~ ~ ~ air


damage @s[tag=cryptid.ballchasing] 0 minecraft:player_attack by @p

execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..30] ~ ~ ~ 3 1



##end deci1 ai