## Initialize raycast
summon marker ~ ~ ~ {Tags:["cryptid.athameraycast"],PersistenceRequired:1}

scoreboard players set @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] cryptid.range 50

execute as @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] rotated as @p run function cryptid:action/ritual/athame/ohandraycast


# Player effects

execute anchored feet positioned ^-0.4 ^ ^0.3 run particle block{block_state:{Name:redstone_block}} ~ ~-0.3 ~ 0 0 0 0 50


playsound minecraft:entity.bogged.hurt ambient @a[distance=..15] ~ ~ ~ 0.5 0.2
damage @p 4 dry_out