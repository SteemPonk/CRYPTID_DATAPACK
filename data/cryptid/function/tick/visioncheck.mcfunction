execute store result score @s cryptid.player.random run random value 1..6000


execute if entity @s[tag=cryptid.jelly] if score @s cryptid.jelly.phase matches 1..50 at @s if entity @p[distance=0..30] run execute as @p at @s run tag @s add cryptid.glitchscreen


execute if entity @s[tag=cryptid.jelly] if score @s cryptid.jelly.phase matches 1..2 at @s if entity @p[distance=0..30] run function cryptid:action/jelly1

execute if entity @s[tag=cryptid.jelly] if score @s cryptid.jelly.phase matches 3..6 at @s if entity @p[distance=0..20] run function cryptid:action/jelly2

execute if entity @s[tag=cryptid.jelly] if score @s cryptid.jelly.phase matches 7 at @s if entity @p[distance=0..20] run function cryptid:action/jelly3

execute if entity @s[tag=cryptid.jelly] if score @s cryptid.jelly.phase matches 8 at @s if entity @p[distance=0..4] run function cryptid:action/jellydeath


execute if entity @s[tag=cryptid.jelly] if score @s cryptid.player.random matches 6 at @s if entity @p[distance=0..5] run function cryptid:action/jellyrandom



execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 1..50 run execute as @p at @s run tag @s add cryptid.glitchscreen

execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 10..18 at @s if entity @p[distance=0..140] run function cryptid:action/watcherstart

execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 4..6 if entity @p[distance=0..80] run execute as @p at @s run function cryptid:events/cryptid/skinned1

execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 7..9 if entity @p[distance=0..80] run execute as @p at @s run function cryptid:events/cryptid/flicker2


execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 7..8 if entity @p[distance=0..80] run function cryptid:events/quietkill


execute if entity @s[tag=cryptid.watcher] if score @s cryptid.player.random matches 1..10 if entity @p[distance=0..80] run playsound minecraft:cryptid.fog.ambient ambient @a ~ ~ ~ 10 0.3

