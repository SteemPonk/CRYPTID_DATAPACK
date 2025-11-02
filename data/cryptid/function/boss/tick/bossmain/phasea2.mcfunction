
##spawn skulls if distance campers!!!
execute if entity @a[distance=33..50] if score @s cryptid.boss.10 matches 20 run execute positioned ~ ~20 ~ facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^5 run function cryptid:boss/spawn/spawnskull





##timeLINE

execute if score @s cryptid.bosstime matches 1004 run function cryptid:boss/action/boss/spawn4skulls
execute if score @s cryptid.bosstime matches 1005 run function cryptid:boss/action/boss/spawn10orbs
execute if score @s cryptid.bosstime matches 1010 run function cryptid:boss/action/boss/spawncirclesword
execute if score @s cryptid.bosstime matches 1150 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 1180 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1230 run execute as @a[distance=0..50, limit=2] at @s run function cryptid:boss/action/boss/spawnswordsonplayer2
execute if score @s cryptid.bosstime matches 1260 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1340 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1420 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1500 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1540 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 1580 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 1600 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 1640 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 1700 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 1740 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 1810 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 1850 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 1949 run function cryptid:boss/action/boss/spawn4skulls



#################explosions randomly

execute if score @s cryptid.bosstime matches 1500 run function cryptid:boss/action/boss/tweakrings
