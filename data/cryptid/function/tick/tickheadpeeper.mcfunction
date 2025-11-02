
execute as @s[tag=!init] at @s run tp @s ~ ~15 ~
execute as @s[tag=!init] at @s run tag @s add init


execute positioned as @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^50 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute store result score @s cryptid.random run random value 1..2000
execute if score @s[tag=!hitting] cryptid.lookcounter matches 12.. run function cryptid:action/headpeeper/smash
execute if score @s[tag=!hitting] cryptid.random matches 1..70 if entity @p[distance=0..25] run function cryptid:action/headpeeper/smash


execute if entity @p[distance=100..] if score @s cryptid.random matches 110..500 run kill @s

##despawn

execute if score @s cryptid.timer matches ..-201 if score @s cryptid.headpeepersmash matches 24 run function cryptid:events/quietkill
scoreboard players remove @s[tag=hitting] cryptid.timer 1



##tickcycle
scoreboard players add @s[tag=hitting] cryptid.headpeepersmash 1
execute if score @s[tag=hitting] cryptid.headpeepersmash matches 50.. run scoreboard players set @s cryptid.headpeepersmash 0

execute if score @s cryptid.headpeepersmash matches 19 run playsound minecraft:cryptid.head.scream ambient @a ~ ~ ~ 4 0.1


execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^1 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^2 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^3 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^4 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^5 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^6 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^7 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^8 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^9 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^10 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^11 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^12 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^13 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^14 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^15 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^16 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^17 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^18 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^19 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^20 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^21 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^22 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^23 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^24 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^25 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^26 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
