execute as @s[tag=!init] run spreadplayers ~ ~ 40 30 false @s
execute as @s[tag=!init] run tag @s add cryptid.timer
execute as @s[tag=!init] run tp @s ~ ~-160 ~
execute as @s[tag=!init] run execute positioned ~ ~160 ~ unless entity @p[distance=0..40] run tag @s add init



##up
execute if score @s cryptid.timer matches -1100.. run execute positioned as @s run tp @s ~ ~0.2 ~
execute if score @s cryptid.timer matches -1100.. run playsound minecraft:cryptid.digging.ambient ambient @a ~ ~ ~ 3 0.1 0.1
execute if score @s cryptid.timer matches -1100.. run execute positioned ~ 512 ~ positioned over world_surface run particle block{block_state:{Name:red_concrete}} ~ ~-4 ~ 9 3 9 .0010 2000
execute if score @s cryptid.timer matches -1101 run fillbiome ~-10 ~-60 ~-10 ~10 ~60 ~10 cryptid:soma

execute if score @s cryptid.timer matches ..-1102 run tag @s remove cryptid.timer


##kill

execute positioned ~ ~-70 ~ run execute if entity @p[distance=0..20] run tag @s add death




##kill animation

execute if entity @s[tag=death] run particle block_marker{block_state:{Name:red_concrete}} ~ ~-45 ~ 5 45 5 0.01 3000
execute if entity @s[tag=death] run playsound minecraft:cryptid.ambient ambient @a
execute if entity @s[tag=death] run time set midnight
execute if entity @s[tag=death] run function cryptid:events/sky/roamingentity
execute if entity @s[tag=death] run function cryptid:events/sky/roamingentity
execute if entity @s[tag=death] run function cryptid:events/sky/roamingentity
execute if entity @s[tag=death] run kill @s





##random
execute store result score @s cryptid.player.random run random value 1..4000
execute if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.player.random matches 2 run function cryptid:events/cryptid/flooreye
execute if score @s cryptid.player.random matches 3..5 if entity @p[distance=100..] run kill @s
