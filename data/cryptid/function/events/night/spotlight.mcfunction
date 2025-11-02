summon vindicator ~ ~112 ~ {NoAI:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Sky Philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spotlight"],ArmorItems:[{},{},{},{id:stone_button}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~110 ~ {NoAI:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Sky Ray"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spotlight2"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1360},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[type=vindicator, tag=cryptid.spotlight, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspotlight"}
##second ai
execute as @e[type=vindicator, tag=cryptid.spotlight2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspotlight2"}


execute as @e[type=vindicator, tag=cryptid.spotlight, sort=nearest, limit=1] at @s run tp @s ~ ~ ~ 0 90





##other
attribute @e[type=vindicator, sort=nearest, tag=cryptid.spotlight, limit=1] minecraft:generic.scale base set 3
attribute @e[type=vindicator, sort=nearest, tag=cryptid.spotlight2, limit=1] minecraft:generic.scale base set 30

execute positioned ~ ~-20 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.spotlight] minecraft:invisibility infinite 1 true
execute positioned ~ ~-20 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.spotlight2] minecraft:invisibility infinite 1 true

execute positioned ~ ~-20 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.spotlight,limit=1] cryptid.mob.class 2
execute positioned ~ ~-20 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.spotlight2,limit=1] cryptid.mob.class 2

playsound minecraft:cryptid.ambient.spirit ambient @a ~ ~100 ~ 100 0.54
execute as @s store result score @s cryptid.player.random run random value 1..4
execute if score @s cryptid.player.random matches 1 run execute as @a at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, limit=1, type=vindicator, tag=cryptid.spotlight]
execute if score @s cryptid.player.random matches 1 run execute as @p at @s run function cryptid:events/cryptid/flicker5


team join cryptid.nocollide @e[tag=cryptid.spotlight2, type=vindicator]

tag @s add cryptid.spotlighttarget


