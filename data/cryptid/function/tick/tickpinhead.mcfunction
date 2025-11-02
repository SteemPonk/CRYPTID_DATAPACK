execute as @s[tag=!init] at @s run scoreboard players set @s pinhead.state 0
execute as @s[tag=!init] at @s run tp @s ~ ~-620 ~
execute as @s[tag=!init] at @s run tag @s add init



##score ticker
execute positioned as @s[scores={pinhead.state=0}] if entity @p[distance=160..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.02 ~ ~
execute positioned as @s[scores={pinhead.state=1}] if entity @p[distance=150..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.04 ~ ~
execute positioned as @s[scores={pinhead.state=2}] if entity @p[distance=130..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.08 ~ ~
execute positioned as @s[scores={pinhead.state=3}] if entity @p[distance=100..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~
execute positioned as @s[scores={pinhead.state=4}] if entity @p[distance=90..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute positioned as @s[scores={pinhead.state=5}] if entity @p[distance=50..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~
execute positioned as @s[scores={pinhead.state=6}] if entity @p[distance=21..] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.35 ~ ~



##jkill

execute as @s[tag=killmark] at @s run tp @s ~ ~-300 ~
execute as @s[tag=killmark] at @s run kill @s

execute as @s[scores={pinhead.state=6}, tag=looking] at @s run function cryptid:action/pinhead/jump 

execute if entity @p[distance=0..20] at @s run function cryptid:action/pinhead/jump 


##closer

execute if entity @s[tag=pinhead.closer, tag=!looking] at @s run scoreboard players add @s pinhead.state 1
execute if entity @s[tag=pinhead.closer, tag=!looking] at @s run playsound minecraft:cryptid.lamp.ambient ambient @a ~ ~ ~ 12 0.8
execute if entity @s[tag=pinhead.closer, tag=!looking] at @s run tag @s remove pinhead.closer



###random
execute store result score @s cryptid.player.random run random value 1..7000


execute if score @s cryptid.player.random matches 1..600 run tag @s remove looking


##normal kill
execute store result score @s cryptid.player.random run random value 1..9000

execute if score @s cryptid.player.random matches 2 run kill @s


