tp @s[tag=!init] ~ ~-1.05 ~
tag @s[tag=!init] add init


##player look and events
execute positioned as @s[tag=flooreye.active] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=flooreye.active] run damage @e[tag=cryptid, sort=random, limit=1] 0 player_attack by @p



##death
execute positioned as @s at @s if block ~ ~0.5 ~ air run damage @p[distance=0..4] 4 cryptid:cryptid by @s
execute positioned as @s at @s if block ~ ~0.5 ~ air run function cryptid:events/quietkill



##random tick
execute store result score @s cryptid.player.random run random value 1..2000000


##active
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 1..41400 run tag @s add flooreye.active
execute if entity @p[distance=0..5] if score @s cryptid.player.random matches 1..714000 run tag @s add flooreye.active


##tp looking
execute if entity @s[tag=flooreye.active] at @s run execute as @p[distance=0..4] at @s run tp @s ~ ~ ~ facing entity @e[type=husk, tag=cryptid.flooreye, sort=nearest, limit=1]
execute if entity @s[tag=flooreye.active] at @s run execute as @p[distance=0..3] at @s run tag @s add cryptid.fakescreen
execute if entity @s[tag=flooreye.active] at @s run execute as @p[distance=0..3] at @s run damage @s 0.5 cryptid:chomp by @s


##random tps
execute if score @s[tag=!flooreye.active] cryptid.player.random matches 1..5800 run execute positioned as @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]



execute if score @s cryptid.player.random matches 1350..1850 run function cryptid:action/flooreye/tprandom


##kll
execute if entity @p[distance=70..] if score @s cryptid.player.random matches 12..2500 run function cryptid:events/quietkill

##random events
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 12..25 run function cryptid:events/quietkill
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 50..150 run execute as @p[distance=0..10] at @s run scoreboard players remove @s cryptid.player.harmony 200
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 1..50 run function cryptid:events/cryptid/flicker5 
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 100..150 run function cryptid:events/general/sprayevent
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 200..250 run function cryptid:events/node/block
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 300..350 run function cryptid:events/cryptid/chomper
execute if entity @s[tag=flooreye.active] if score @s cryptid.player.random matches 400..450 run function cryptid:events/cryptid/owl



##ai

execute positioned as @s rotated as @s at @s if entity @s[x_rotation=-35..90] run tp @s ~ ~ ~ ~ -35

