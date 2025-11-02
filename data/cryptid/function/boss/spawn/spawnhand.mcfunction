
summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.hand"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1397},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

playsound minecraft:cryptid.sword.spawn ambient @a ~ ~ ~ 0.5 0.7

execute as @e[type=zombie, sort=nearest,limit=1, tag=boss.hand, tag=!init1] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .bosshand cryptid.anitimer
execute as @e[type=zombie, sort=nearest,limit=1, tag=boss.hand, tag=!init1] run tag @s add init1



execute as @e[tag=boss.hand, type=zombie] at @s run attribute @s minecraft:generic.scale base set 0.2
execute as @e[tag=boss.hand, type=zombie] at @s run effect give @s invisibility infinite 1 true
