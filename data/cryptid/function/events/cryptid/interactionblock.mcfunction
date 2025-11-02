execute store result score @s cryptid.player.random run random value 1..6
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"?","color":"red"}
execute store result score @s cryptid.player.random run random value 1..3

execute if score @s cryptid.player.random matches 1 run summon vindicator ~ ~620 ~ {DeathLootTable:"minecraft:empty",NoAI:1,Silent:1,NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"cryptid.savestate.soul"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.iblock","cryptid.block.1"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1330},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 2 run summon vindicator ~ ~620 ~ {DeathLootTable:"minecraft:empty",NoAI:1,Silent:1,NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"cryptid.savestate.soul"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.iblock","cryptid.block.2"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1357},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 3 run summon vindicator ~ ~620 ~ {DeathLootTable:"minecraft:empty",NoAI:1,Silent:1,NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"cryptid.savestate.soul"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.iblock","cryptid.block.3"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1356},count:1}],ArmorDropChances:[0f,0f,0f,0f]}



execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.iblock] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.iblock,limit=1] minecraft:generic.scale base set 3

execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.iblock,limit=1] cryptid.mob.class 2

execute as @e[type=vindicator, tag=cryptid.iblock, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickiblock"}


execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, tag=cryptid.iblock, limit=1] at @s run function cryptid:action/general/placerandom {"min":"1","max":"90","underheight":"500"}

