playsound minecraft:cryptid.world.infection ambient @a ~ ~1000 ~ 100 0.1

summon armor_stand ~ ~620 ~ {Invisible:1,DeathLootTable:"minecraft:empty",NoAI:1,Silent:1,NoGravity:1, CanBreakDoors:1,ConversionTime:29381927839812,CustomName:'[{"text":"cryptid.savestate.soul"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.fakemountain","cryptid.block.1"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1373},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.fakemountain] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run attribute @e[type=armor_stand, sort=nearest, tag=cryptid.fakemountain,limit=1] minecraft:generic.scale base set 30

execute positioned ~ ~620 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.fakemountain,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.fakemountain, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfakemountain"}


execute positioned ~ ~620 ~ as @e[type=armor_stand, sort=nearest, tag=cryptid.fakemountain, limit=1] at @p positioned ~ ~ ~140 run function cryptid:action/general/placerandom {"min":"1","max":"30","underheight":"500"}



function cryptid:events/cryptid/flicker3