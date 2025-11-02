summon armor_stand ~ ~ ~ {Invisible:1, NoGravity:1, CustomName:'[{"text":"[???]","color":"red"}]',Tags:["cryptid","cryptid.spawner","cryptid.timer"]}

execute as @e[type=armor_stand, tag=cryptid.spawner, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspawner"}


##mob behavior
execute store result score @s cryptid.player.random run random value 1..5
execute if score @s cryptid.player.random matches 1 run tag @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] add spawner.1
execute if score @s cryptid.player.random matches 2 run tag @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] add spawner.2
execute if score @s cryptid.player.random matches 3 run tag @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] add spawner.3
execute if score @s cryptid.player.random matches 4 run tag @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] add spawner.4
execute if score @s cryptid.player.random matches 5 run tag @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] add spawner.5

scoreboard players set @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] cryptid.timer 200

execute as @e[type=armor_stand, tag=cryptid.spawner, sort=nearest, limit=1] at @s run attribute @s minecraft:generic.scale base set 0.05