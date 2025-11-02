execute unless entity @e[tag=cryptid.evilmob, distance=0..2.5] run kill @s

execute if entity @p[distance=0..5] if entity @e[type=!husk,tag=cryptid.evilmob,sort=nearest, distance=0..3, nbt={HurtTime:7s}] run execute as @e[tag=cryptid.evilcore, distance=0..20] at @s run damage @s 0 minecraft:player_attack by @p

execute if entity @p[distance=0..5] if entity @e[type=!husk,tag=cryptid.evilmob,sort=nearest, distance=0..3, nbt={HurtTime:7s}] run playsound minecraft:cryptid.snap.ambient ambient @a[distance=0..20] ~ ~ ~ 1 0.8 1

