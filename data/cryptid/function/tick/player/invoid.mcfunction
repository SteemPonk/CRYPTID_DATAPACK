execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.voidtotem:1}] run effect give @s minecraft:regeneration 1 10 true




execute if entity @s[tag=!invoid] run playsound minecraft:cryptid.back.darker ambient @s ~ ~-1000 ~ 100000 0.2
tag @s add cryptid.invoid

###timer


scoreboard players add @s cryptid.voidtimer 1

#effect give @s minecraft:blindness 10 1 true



##spawning things

execute if score @s cryptid.voidtimer matches 100 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 600 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 1100 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 1600 run function cryptid:events/void/wyrmalt


##skip

execute if score @s cryptid.voidtimer matches 100 run tellraw @s[tag=cryptid.skipvoidcut] {"text":"[entity.name] Back again?","color":"red"}

execute if score @s cryptid.voidtimer matches 200 run tellraw @s[tag=cryptid.skipvoidcut] {"text":"[entity.name] Have fun down there","color":"red"}

execute if score @s cryptid.voidtimer matches 250 run execute in cryptid:below run tp @s ~ 500 ~

execute if score @s cryptid.voidtimer matches 250 run effect give @s minecraft:slow_falling 100 0 true



##message

execute if score @s cryptid.voidtimer matches 100 run tellraw @s {"text":"[entity.name] There's a lot of space down here","color":"red"}

execute if score @s cryptid.voidtimer matches 500 run tellraw @s {"text":"[entity.name] Took a long time for the first spores to get to the top.","color":"red"}

execute if score @s cryptid.voidtimer matches 900 run tellraw @s {"text":"[entity.name] But getting through the bedrock was the most difficult.","color":"red"}

execute if score @s cryptid.voidtimer matches 1200 run tellraw @s {"text":"[entity.name] Colonization took years.","color":"red"}

execute if score @s cryptid.voidtimer matches 1600 run tellraw @s {"text":"[entity.name] Approaching the border now.","color":"red"}

execute if score @s cryptid.voidtimer matches 1900 run tellraw @s {"text":"[entity.name] Head to the origin, there you will find the root","color":"red"}

execute if score @s cryptid.voidtimer matches 2100 run effect give @s minecraft:slow_falling 500 0 true

execute if score @s cryptid.voidtimer matches 2100.. run execute in cryptid:below run tp @s ~ 1500 ~

execute if score @s cryptid.voidtimer matches 2100.. run tag @s add cryptid.skipvoidcut