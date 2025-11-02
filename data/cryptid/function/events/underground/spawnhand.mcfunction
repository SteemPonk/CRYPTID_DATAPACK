tellraw @s {"text":"-------------------------------","color":"red"}


summon minecraft:vindicator ~ 400 ~ {DeathLootTable:"minecraft:empty", CustomName:'[{"text":"Stone Basilisk"}]',Tags:["cryptid","cryptid.hand"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0.2f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

item replace entity @e[type=vindicator,tag=cryptid.hand] armor.head with potion[minecraft:custom_model_data=1351]


execute positioned ~ 400 ~ run effect give @e[type=vindicator, tag=cryptid.hand] minecraft:invisibility infinite 1 true


execute as @e[type=vindicator, tag=cryptid.hand] at @s run function cryptid:action/stats/hand

execute positioned ~ 400 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.hand,limit=1] cryptid.mob.class 4

execute positioned ~ 400 ~ run spreadplayers ~ ~ 10 30 under 40 false @e[type=vindicator, sort=nearest, tag=cryptid.hand, limit=1]

execute as @e[type=vindicator, tag=cryptid.hand, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickhand"}
