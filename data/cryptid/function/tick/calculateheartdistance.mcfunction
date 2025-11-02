execute store result score @s cryptid.playerx run data get entity @s Pos[0]
execute store result score @s cryptid.playery run data get entity @s Pos[1]
execute store result score @s cryptid.playerz run data get entity @s Pos[2]


##calculate distance add functions


#grab both x

execute store result score @s math.target run scoreboard players get @s cryptid.playerx
execute store result score @s math.source run scoreboard players get @e[type=vindicator,sort=nearest,limit=1,tag=cryptid.vorheart] cryptid.heartx
function math:sub
scoreboard players operation @s math.target *= @s math.target
execute store result score @s cryptid.player.distx run scoreboard players get @s math.target

#grabboth y

execute store result score @s math.target run scoreboard players get @s cryptid.playery
execute store result score @s math.source run scoreboard players get @e[type=vindicator,sort=nearest,limit=1,tag=cryptid.vorheart] cryptid.hearty
function math:sub
scoreboard players operation @s math.target *= @s math.target
execute store result score @s cryptid.player.disty run scoreboard players get @s math.target

#grabboth z

execute store result score @s math.target run scoreboard players get @s cryptid.playerz
execute store result score @s math.source run scoreboard players get @e[type=vindicator,sort=nearest,limit=1,tag=cryptid.vorheart] cryptid.heartz
function math:sub
scoreboard players operation @s math.target *= @s math.target
execute store result score @s cryptid.player.distz run scoreboard players get @s math.target


##add then squareroot
scoreboard players set @s math.target 0
scoreboard players set @s math.source 0

scoreboard players operation @s math.target = @s cryptid.player.distz
scoreboard players operation @s math.target += @s cryptid.player.disty
scoreboard players operation @s math.target += @s cryptid.player.distx



function math:sqrt

scoreboard players operation @s cryptid.player.heart.distance = @s math.target


