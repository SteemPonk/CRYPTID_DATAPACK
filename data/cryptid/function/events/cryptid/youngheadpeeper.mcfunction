execute store result score @s cryptid.random run random value 1..70
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"GROWTH","color":"red"}

summon armor_stand ~ ~401 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~402 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~403 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~404 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~405 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~406 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~407 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

summon armor_stand ~ ~408 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

execute if score @s cryptid.random matches 1..10 run summon armor_stand ~ ~409 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

execute if score @s cryptid.random matches 1..20 run summon armor_stand ~ ~410 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

execute if score @s cryptid.random matches 1..30 run summon armor_stand ~ ~411 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}

execute if score @s cryptid.random matches 1..50 run summon armor_stand ~ ~412 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,armor_standConversionTime:29381927839812,CustomName:'[{"text":"Headling"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid.timer","cryptid","cryptid.headling","cryptid.lookcount"]}





execute positioned ~ ~620 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.headling,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.headling, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickheadling"}
execute as @e[type=armor_stand, tag=cryptid.headling] at @s run attribute @s generic.scale base set 0.3

execute as @e[type=armor_stand, tag=cryptid.headling] at @s run spreadplayers ~ ~ 50 30 false @s