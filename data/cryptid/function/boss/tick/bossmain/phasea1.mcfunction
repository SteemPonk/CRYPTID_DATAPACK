
##spawn skulls if distance campers!!!
execute if entity @a[distance=38..60] if score @s cryptid.boss.10 matches 20 run execute positioned ~ ~20 ~ facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^5 run function cryptid:boss/spawn/spawnskull





##timeLINE

execute if score @s cryptid.bosstime matches 4 run function cryptid:boss/action/boss/spawn4pillars
execute if score @s cryptid.bosstime matches 5 run function cryptid:boss/action/boss/spawn10orbs
execute if score @s cryptid.bosstime matches 10 run function cryptid:boss/action/boss/spawncirclesword
execute if score @s cryptid.bosstime matches 150 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 180 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 220 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 260 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 300 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 340 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 380 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 420 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 460 run function cryptid:boss/action/boss/spawnswordsonplayer
execute if score @s cryptid.bosstime matches 500 run function cryptid:boss/spawn/spawnhandline
execute if score @s cryptid.bosstime matches 540 run execute as @a[distance=0..50, limit=2] at @s run function cryptid:boss/action/boss/spawnswordsonplayer2
execute if score @s cryptid.bosstime matches 600 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 650 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 700 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 790 run function cryptid:boss/spawn/spawnsuperskull
execute if score @s cryptid.bosstime matches 850 run function cryptid:boss/action/boss/spawn10orbs
execute if score @s cryptid.bosstime matches 910 run function cryptid:boss/action/boss/spawncirclesword
execute if score @s cryptid.bosstime matches 949 run function cryptid:boss/action/boss/spawn4skulls



#################explosions randomly

execute if score @s cryptid.bosstime matches 400 run function cryptid:boss/action/boss/tweakrings
execute if score @s cryptid.bosstime matches 800 run function cryptid:boss/action/boss/tweakrings
