
execute as @e[distance=..0.5,type=zombie,tag=cryptid.orifice] run function cryptid:action/ritual/athame/hitorrifice

scoreboard players remove @s cryptid.range 1

#particle falling_dust{block_state:{Name:red_concrete_powder}} ~ ~ ~

execute if score @s cryptid.range matches ..1 run kill @s 

execute unless entity @e[distance=..0.5,type=zombie,tag=cryptid.orifice] if score @s cryptid.range matches 1.. positioned ^ ^ ^0.25 run function cryptid:action/ritual/athame/ohandraycast

execute if entity @e[distance=..0.5,type=zombie,tag=cryptid.orifice] run kill @s