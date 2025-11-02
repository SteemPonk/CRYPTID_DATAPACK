
execute store result score @s cryptid.player.random run random value 1..10000

execute if entity @p[distance=0..5] if entity @s[tag=!hand.s2] run function cryptid:action/hand/jump


execute if entity @s[tag=!hand.s2] run effect give @s minecraft:slowness 1 100 true
execute if entity @s[tag=!hand.s2] run effect give @s minecraft:resistance 1 100 true

execute if entity @s[tag=hand.s2] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1352]


###scoreboard magic
execute if entity @s[tag=hand.s2] if entity @p[distance=0..2,scores={cryptid.damagetaken=1..}] run tag @s add hand.s3
execute if entity @s[tag=hand.s2] if entity @p[distance=0..2,scores={cryptid.damagetaken=1..}] run scoreboard players set @s cryptid.handdamagetimer 40
execute if entity @s[tag=hand.s2,scores={cryptid.handdamagetimer=1..}] run tp @s @p



execute if score @s cryptid.handdamagetimer matches 1.. run scoreboard players remove @s cryptid.handdamagetimer 1


execute if entity @s[tag=hand.s3] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1353]
execute if score @s cryptid.handdamagetimer matches 0 run tag @s remove hand.s3

execute if score @s cryptid.handdamagetimer matches ..0 run scoreboard players set @s cryptid.handdamagetimer 0
damage @p[distance=0..1.5] 2 minecraft:cramming by @s

execute if entity @s[tag=hand.chase] run effect give @s speed 4 3 true
execute if entity @s[tag=hand.chase] run tp @s ^ ^ ^0.5 facing entity @p
execute if entity @s[tag=hand.chase] run damage @s 0 player_attack by @p

execute as @s at @s if entity @p[distance=0..1] run tag @s remove hand.chase
execute as @s at @s if entity @p[distance=0..1] run data merge entity @s {NoAI:0}

###attacks

##random
execute if score @s cryptid.player.random matches 1..2 run function cryptid:events/quietkill
execute if score @s cryptid.player.random matches 10..30 run function cryptid:events/underground/darkeyes
execute if entity @p[distance=100..] run function cryptid:events/quietkill

execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..30] ~ ~ ~ 10 1




tag @a[distance=0..5] add cryptid.glitchscreen

