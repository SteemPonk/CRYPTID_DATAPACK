

execute as @s store result score @s cryptid.player.random run random value 1..60
execute if score @s cryptid.player.random matches 1 run tag @e[sort=random, limit=1, tag=cryptid.spotlight.watching] remove cryptid.spotlight.watching
execute if score @s cryptid.player.random matches 1 run tag @e[tag=!cryptid, sort=random, limit=1,distance=0..370] add cryptid.spotlight.watching



##tp main
execute as @s at @s anchored eyes facing entity @e[tag=cryptid.spotlight.watching, sort=nearest, limit=1] eyes positioned ^ ^ ^0.03 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


##extend
execute anchored eyes run tp @e[tag=cryptid.spotlight2, type=vindicator, sort=nearest, limit=1] ^ ^ ^60



##execute looking

execute as @s at @s positioned ^ ^ ^-1 facing entity @a[sort=random, distance=0..250] eyes positioned ^ ^ ^1 if entity @s[distance=..0.045] run execute as @a[sort=random] at @s run function cryptid:action/player/spotlightsee


execute as @s store result score @s cryptid.player.random run random value 1..6000


execute if score .globaltime cryptid.time matches 1000..13000 run execute store result score @s cryptid.player.random run random value 1..60

execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if score @s cryptid.player.random matches 1 run execute as @e[type=vindicator, tag=cryptid.spotlight2, sort=nearest, limit=1] at @s run function cryptid:events/quietkill
