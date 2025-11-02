tp @s[tag=!watcherstart] ~ ~ ~ facing entity @p


execute if entity @p[distance=120..] run function cryptid:events/quietkill

execute as @s[tag=watcherstart] at @s facing entity @p eyes run tp @s ^ ^ ^3 ~ ~


fill ~3 ~23 ~3 ~-3 ~-3 ~-3 air

execute positioned ~ ~15 ~ if entity @p[distance=0..45] at @s[tag=!watcherstart] run function cryptid:events/quietkilltp
execute positioned ~ ~15 ~ if entity @p[distance=0..45] at @s[tag=!watcherstart] run playsound minecraft:cryptid.lamp.ambient ambient @a ~ ~100 ~ 100 1.2

execute positioned ~ ~5 ~ if entity @p[distance=0..20] at @s[tag=watcherstart] run function cryptid:events/quietkilltp


execute store result score @s cryptid.player.random run random value 1..150000

execute if score @s cryptid.player.random matches 10 run function cryptid:events/general/corruptionspawner










