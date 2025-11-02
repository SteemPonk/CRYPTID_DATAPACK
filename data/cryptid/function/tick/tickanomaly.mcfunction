execute as @s store result score @s cryptid.player.random run random value 1..4800

execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.skinned.ambient ambient @a[distance=0..30] ~ ~ ~
execute if score @s cryptid.ambient matches 2 run playsound minecraft:cryptid.ambient ambient @a[distance=0..30] ~ ~ ~
execute if score @s cryptid.ambient matches 3 run playsound minecraft:ambient.cave ambient @a[distance=0..30] ~ ~ ~
execute if score @s cryptid.ambient matches 4 run playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=0..30] ~ ~ ~
execute if score @s cryptid.ambient matches 6 run function cryptid:events/cryptid/skinned1
execute if score @s cryptid.ambient matches 7 run function cryptid:events/node/block
execute if score @s cryptid.ambient matches 8 run function cryptid:events/node/sign



execute if score @s cryptid.player.random matches 50..80 run kill @e[type=armor_stand, tag=cryptid.anomaly]


particle block_marker{block_state:{Name:nether_wart_block}} ~ ~1 ~ 15 15 15 1 1 force

##playerevents

