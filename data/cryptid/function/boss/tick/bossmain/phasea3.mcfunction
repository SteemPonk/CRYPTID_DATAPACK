
##spawn skulls if distance campers!!!
execute if entity @a[distance=33..50] if score @s cryptid.boss.10 matches 20 run execute positioned ~ ~20 ~ facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^5 run function cryptid:boss/spawn/spawnskull





##timeLINE

execute if score @s cryptid.bosstime matches 2004 run function cryptid:boss/action/boss/spawn4pillars
execute if score @s cryptid.bosstime matches 2005 run function cryptid:boss/action/boss/spawn10orbs
execute if score @s cryptid.bosstime matches 2010 run function cryptid:boss/action/boss/spawncirclesword
execute if score @s cryptid.bosstime matches 2150 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2180 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2220 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2260 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2300 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2340 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2380 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2420 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2460 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2500 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2540 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 2780 run execute as @a[distance=0..50, limit=2] at @s run function cryptid:boss/action/boss/spawnswordsonplayer2
execute if score @s cryptid.bosstime matches 2580 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 2600 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 2650 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 2700 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 2790 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 2830 run function cryptid:boss/action/boss/spawn10orbs
execute if score @s cryptid.bosstime matches 2900 run function cryptid:boss/action/boss/spawncirclesword
execute if score @s cryptid.bosstime matches 2949 run function cryptid:boss/action/boss/spawn4skulls



#################explosions randomly

execute if score @s cryptid.bosstime matches 2400 run function cryptid:boss/action/boss/tweakrings
execute if score @s cryptid.bosstime matches 2800 run function cryptid:boss/action/boss/tweakrings
