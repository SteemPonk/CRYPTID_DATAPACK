scoreboard players set @s[tag=!active] cryptid.bosstime 0


##init
execute if entity @p[distance=0..10] if entity @s[tag=!active] run function cryptid:boss/action/boss/init



##tick active
execute as @s[tag=active] run function cryptid:boss/action/boss/active
execute as @s[tag=!active] run kill @e[tag=bosscryptid, tag=!boss.ring, tag=!boss.core1, tag=!boss.core2, tag=!boss.core3]



##resetbosstime

execute if score @s cryptid.bosstime matches 7500 run scoreboard players set @s cryptid.bosstime 0



##anticheese
kill @e[type=tnt, distance=0..50]
kill @e[type=tnt_minecart, distance=0..50]
kill @e[type=wind_charge, distance=0..50]
kill @e[type=end_crystal, distance=0..50]
kill @e[type=wither, distance=0..50]
kill @e[type=iron_golem, distance=0..50]

effect give @s minecraft:fire_resistance infinite 255 true


##todo: music sync once every tick, add spawnable tag.



##bossbar
bossbar set minecraft:cryptid.root players
bossbar set minecraft:cryptid.root players @a[tag=boss.fight.1]


##update


execute unless entity @e[tag=boss.core3, type=zombie, sort=nearest, limit=1] run function cryptid:boss/action/boss/die
execute store result bossbar cryptid.root value run data get entity @e[tag=boss.core3, type=zombie, sort=nearest, limit=1] Health 1.0
execute if entity @e[tag=boss.core3, type=zombie, sort=nearest, limit=1, nbt={HurtTime:8s}] run playsound minecraft:entity.iron_golem.death ambient @a ~ ~ ~ 1 0.1
execute if entity @e[tag=boss.core3, type=zombie, sort=nearest, limit=1, nbt={HurtTime:8s}] run particle minecraft:gust ~ ~ ~ 3 3 3 0.1 30