execute as @s[tag=!init] at @s run execute at @p rotated as @p run tp @s ^ ^ ^2
execute as @s[tag=!init] at @s run item replace entity @s armor.head with potion[custom_model_data=1386]
execute as @s[tag=!init] at @s run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .coal cryptid.anitimer
execute as @s[tag=!init] at @s run tag @s add init


damage @s 0 minecraft:player_attack by @p[distance=0..40]
execute as @s[tag=init] at @s run playsound minecraft:cryptid.owl.spawn ambient @a ~ ~ ~ 0.25 0.6


##timer

execute if score @s cryptid.timer matches -180 run item replace entity @s armor.head with potion[custom_model_data=1387]





execute if score @s cryptid.timer matches ..-2800 if entity @p[distance=10..] run function cryptid:events/quietkill




##3random
damage @p[distance=0..1.5] 2 cryptid:chomp
execute store result score @s cryptid.random run random value 1..20
execute if score @s cryptid.random matches 1 as @p[distance=0..1.5, sort=nearest, limit=1] at @s run function cryptid:events/general/spawnmouth


effect give @s minecraft:speed 3 3 true

execute store result score @s cryptid.random run random value 1..400

execute if score @s cryptid.random matches 1 run playsound minecraft:cryptid.deep.vibrate ambient @a ~ ~ ~ 2 0.6


##explod

execute if entity @p[distance=0..1] at @s run execute as @a[distance=0..2] at @s run playsound minecraft:cryptid.jumpscare1 ambient @a ~ ~ ~ 1 0.1
execute if entity @p[distance=0..1] at @s run execute as @a[distance=0..2] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute if entity @p[distance=0..1] at @s run function cryptid:action/spawntree
execute if entity @p[distance=0..1] at @s run function cryptid:events/quietkill