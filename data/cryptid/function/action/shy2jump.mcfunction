
execute store result score @s cryptid.player.random run random value 1..5

execute if score @s cryptid.player.random matches 1 run execute as @p run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1]

execute if score @s cryptid.player.random matches 2 run execute as @p run function cryptid:events/cryptid/shy

execute if score @s cryptid.player.random matches 3 run execute as @p run function cryptid:events/node/block

execute if score @s cryptid.player.random matches 4 run execute as @p run function cryptid:events/node/mobs

execute if score @s cryptid.player.random matches 5 run execute as @p run function cryptid:events/node/spawn


playsound minecraft:cryptid.snap.ambient ambient @a[distance=0..20] ~ ~ ~ 1 0.8

function cryptid:events/quietkill
