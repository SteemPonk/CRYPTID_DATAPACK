playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.2 0.1

summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.skull"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1389},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[tag=boss.skull, type=zombie] at @s run attribute @s minecraft:generic.scale base set 0.1
execute as @e[tag=boss.skull, type=zombie] at @s run attribute @s minecraft:generic.max_health base set 3

execute as @e[tag=boss.skull, type=zombie] at @s run effect give @s invisibility infinite 1 true
