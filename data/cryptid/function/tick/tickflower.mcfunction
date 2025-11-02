execute store result score @s cryptid.player.random run random value 1..20000

execute if entity @s[tag=!init] run data merge entity @s {DisabledSlots:4144959}
execute if entity @s[tag=!init] run tag @s add init





execute if score @s cryptid.player.random matches 4..6 run function cryptid:events/node/block
execute if score @s cryptid.player.random matches 20..22 run function cryptid:events/action/spawntree
execute if score @s cryptid.player.random matches 20..22 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 20..210 run execute as @e[tag=cryptid.flower, type=armor_stand, distance=0..30] at @s run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 7..12 run function cryptid:events/node/jump
execute if score @s cryptid.player.random matches 13..17 run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.player.random matches 13..47 run function cryptid:events/node/mobs

scoreboard players remove @p[distance=0..10] cryptid.player.harmony 2
particle falling_dust{block_state:{Name:red_concrete}} ~ ~2 ~ 0.4 0.4 0.4 10 2

execute store result score @s cryptid.player.random run random value 1..20000

execute if score @s cryptid.player.random matches 1..3 run execute as @e[distance=1..20, sort=random, limit=1] at @s run function cryptid:events/general/spawnmouth
