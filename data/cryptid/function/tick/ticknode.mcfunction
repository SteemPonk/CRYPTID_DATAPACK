
execute store result score @s cryptid.player.random run random value 1..10000000




##KILLLLLYEAHHHH
execute as @e[tag=cryptid.playernode,type=armor_stand,sort=random, limit=1] at @s run kill @e[tag=cryptid.playernode,type=armor_stand, distance=1..10]
execute if entity @p[distance=80..] run kill @s


#NOMOREKILLINGNOO

execute if entity @p[distance=35..] run execute store result score @s cryptid.player.random run random value 1..1000






##loop tick checks

execute if score @s cryptid.player.random matches 1 run function cryptid:events/node/spawn
execute if score @s cryptid.player.random matches 2 run function cryptid:events/node/jump
execute if score @s cryptid.player.random matches 3 run function cryptid:events/node/block
execute if score @s cryptid.player.random matches 4 run function cryptid:events/node/sign
execute if score @s cryptid.player.random matches 5..7 run function cryptid:events/node/mobs


##end

execute if score @s cryptid.player.random matches 1..12 run playsound cryptid.ambient ambient @a[distance=0..30] ~ ~ ~ 1 0.1
execute if score @s cryptid.player.random matches 12..25 run playsound ambient.cave ambient @a[distance=0..30] ~ ~ ~ 1 0.1

execute if score @s cryptid.player.random matches 1..55 run kill @s