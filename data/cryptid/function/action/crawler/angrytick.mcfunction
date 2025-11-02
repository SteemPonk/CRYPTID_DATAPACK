execute as @s store result score @s cryptid.random run random value 1..50

execute if score .heartbeat cryptid.globalevent matches 2 run playsound minecraft:cryptid.heartbeat ambient @a ~ ~ ~ 100 0.7
execute if score .heartbeat cryptid.globalevent matches 11 run playsound minecraft:cryptid.heartbeat ambient @a ~ ~ ~ 100 0.7


execute if score .heartbeat cryptid.globalevent matches 2 run title @p title {"text":"\ua019","font":"minecraft:images"}
execute if score .heartbeat cryptid.globalevent matches 11 run title @p title {"text":"\ua018","font":"minecraft:images"}


##damage

tag @p[distance=0..2] add cryptid.glitchscreen
damage @p[distance=0..2] 5 cryptid:chomp by @s


execute if score @s cryptid.timer matches ..1600 if entity @p[distance=35..] run tag @s remove angry
execute if score @s cryptid.timer matches ..1600 if entity @p[distance=35..] run playsound minecraft:cryptid.lamp.ambient ambient @a

execute if entity @s[scores={cryptid.timer=..1940}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1377]


##animator
execute if entity @s[scores={cryptid.timer=1999}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1379]
execute if score @s cryptid.timer matches 1999 run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .crawler cryptid.anitimer

###cryptid:light_emites

execute if score @s cryptid.timer matches 1999 run setblock ~ ~-1 ~ redstone_torch
execute if score @s cryptid.timer matches 1999 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #cryptid:light_emit


execute if score @s cryptid.timer matches 1980 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #cryptid:light_emit
execute if score @s cryptid.timer matches 1980 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #cryptid:light_emit

execute if score @s cryptid.timer matches 1960 run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #cryptid:light_emit
execute if score @s cryptid.timer matches 1960 run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #cryptid:light_emit

execute if score @s cryptid.timer matches 1940 run fill ~13 ~13 ~13 ~-13 ~-13 ~-13 air replace #cryptid:light_emit
execute if score @s cryptid.timer matches 1940 run fill ~13 ~13 ~13 ~-13 ~-13 ~-13 air replace #cryptid:light_emit

#3agro
damage @s 0 player_attack by @p
execute anchored eyes run setblock ^ ^1 ^1 air
execute anchored eyes run setblock ^ ^ ^1 air
execute anchored eyes run setblock ^ ^2 ^1 air

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:cobweb
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:gravel
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #minecraft:rails
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #cryptid:light_emit
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #planks

##speed
execute if entity @p[distance=30..] run effect give @s speed 3 0 true

playsound minecraft:cryptid.chomper.aggro ambient @a ~ ~ ~ 0.5 0.4
##lava

effect give @s minecraft:fire_resistance 1 255 true