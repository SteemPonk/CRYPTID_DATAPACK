summon vindicator ~ ~620 ~ {Invincible:1,NoAI:1,DeathLootTable:"minecraft:empty",NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Freedom"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.worldsky"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1355},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.worldsky] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.worldsky,limit=1] minecraft:generic.scale base set 0.2

execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.worldsky,limit=1] cryptid.mob.class 2

execute as @e[type=vindicator, sort=nearest,limit=1, tag=cryptid.worldsky] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .global cryptid.anitimer2

execute positioned ~ ~620 ~ run team join cryptid.nocollide @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.worldsky]


scoreboard players set @a cryptid.skytime 1200
stopsound @a
playsound minecraft:cryptid.sky.corrupted ambient @a ~ ~1000 ~ 1000
tellraw @a {"text":"[Error] Ignoring unknown tag 'minecraft:internals.sky.awake'","color":"red"}
tag @s add init

execute as @e[type=vindicator, tag=cryptid.worldsky, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickworldsky"}

