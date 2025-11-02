damage @s 0 player_attack by @p

execute store result score @s cryptid.player.random run random value 1..400000

execute if score @s cryptid.player.random matches 2 run function cryptid:events/quietkill

execute if entity @p[distance=150..] run function cryptid:events/quietkill

##ai start

execute if entity @p[distance=30..] run effect give @s speed 8 1 true

execute if entity @s[tag=cryptid.lookingmimic,tag=!mimicstarted] run effect give @s slowness 1 100 true
execute if score @s[tag=cryptid.lookingmimic,tag=!mimicstarted] cryptid.player.random matches 10..11200 run effect give @s slowness 10 100 true
execute as @a[distance=0..1.5] at @s run title @s title {"text":"\ua013","font":"minecraft:images"}

execute if block ~ ~ ~ water run tp @s ^ ^ ^1 facing entity @p

execute if entity @s[tag=cryptid.lookingmimic, tag=!firstlook] run execute align xyz run tp @s ~0.5 ~ ~0.5

execute if entity @s[tag=cryptid.lookingmimic, tag=!firstlook] run tag @s add firstlook


execute store result score @s cryptid.player.random run random value 1..10000

execute if entity @s[tag=cryptid.lookingmimic] if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/flicker1
execute if entity @s[tag=cryptid.lookingmimic] if score @s cryptid.player.random matches 2 run function cryptid:events/cryptid/flicker2
execute if entity @s[tag=cryptid.lookingmimic] if score @s cryptid.player.random matches 3 run function cryptid:events/cryptid/flicker3
execute if entity @s[tag=cryptid.lookingmimic] if score @s cryptid.player.random matches 4 run function cryptid:events/cryptid/flicker4
execute if entity @s[tag=cryptid.lookingmimic] if score @s cryptid.player.random matches 5 run function cryptid:events/cryptid/flicker5


##angry
execute if entity @p[distance=0..1.5] if entity @s[tag=!mimictimer] run scoreboard players set @s mimicstart 180
execute if entity @p[distance=0..1.5] if entity @s[tag=!mimictimer] run playsound minecraft:cryptid.curator.ambient ambient @a[distance=0..100] ~ ~ ~ 1 0.4
execute if entity @p[distance=0..1.5] if entity @s[tag=!mimictimer] run effect give @s minecraft:slowness 12 110 true
execute if entity @p[distance=0..1.5] if entity @s[tag=!mimictimer] run tag @s add mimictimer

scoreboard players remove @s[tag=mimictimer,scores={mimicstart=0..}] mimicstart 1
execute if score @s[tag=mimictimer] mimicstart matches 0 run function cryptid:action/jumpmimic

execute if entity @p[distance=0..1.5] if score @s[tag=mimictimer] mimicstart matches ..0 run function cryptid:action/jumpmimic




execute if entity @s[tag=mimicstarted] run damage @p[distance=0..2] 2 minecraft:out_of_world by @s

execute if entity @s[tag=mimicstarted] run execute if block ~ ~-1 ~ #minecraft:moss_replaceable run setblock ~ ~-1 ~ minecraft:red_terracotta

execute if entity @s[tag=mimicstarted] run effect clear @s slowness


execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.mimic ambient @a[distance=0..10] ~ ~ ~ 1 0.1



##dn

tag @s remove cryptid.lookingmimic
