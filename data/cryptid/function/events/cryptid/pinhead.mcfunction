summon armor_stand ~ ~620 ~145 {NoGravity:1,Invisible:1,IsBaby:1,CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Monument of Pain"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.pinhead"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1395},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute positioned ~ ~620 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.pinhead] cryptid.mob.class 1

execute as @e[type=armor_stand, tag=cryptid.pinhead, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickpinhead"}




function cryptid:events/cryptid/owl