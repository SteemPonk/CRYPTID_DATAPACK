tag @s add agro
effect clear @s slowness
effect give @s minecraft:speed infinite 2 true
damage @s 1 player_attack by @p
playsound minecraft:cryptid.snap.ambient ambient @p ~ ~ ~ 2 0.8
tag @s add cryptid.timer
playsound minecraft:cryptid.digging.ambient ambient @p ~ ~ ~ 10 0.1
scoreboard players set @s cryptid.timer 200
playsound minecraft:cryptid.admin.message ambient @p ~ ~ ~ 100 0.6
execute as @p at @s run tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.invisguy, sort=nearest, limit=1]

