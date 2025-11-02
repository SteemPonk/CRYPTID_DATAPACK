playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 10 0.1

tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]

execute rotated as @s run tp @s ~ ~ ~ ~ 0

execute rotated as @s positioned ^ ^ ^60 run summon zombie ~ ~ ~ {PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.superskull"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1302},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[tag=boss.superskull, type=zombie] at @s run attribute @s minecraft:generic.scale base set 6
execute as @e[tag=boss.superskull, type=zombie] at @s run attribute @s minecraft:generic.max_health base set 3000
execute as @e[tag=boss.superskull, type=zombie] at @s run effect give @s invisibility infinite 1 true
