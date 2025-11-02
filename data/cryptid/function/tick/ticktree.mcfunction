execute if entity @s[tag=!inittree] run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run execute positioned ~ ~12 ~ run function cryptid:events/general/corruptionspawner
execute if entity @s[tag=!inittree] run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run data merge entity @s {DisabledSlots:4144959}

execute if entity @s[tag=!inittree] run tag @e[type=armor_stand, tag=cryptid.tree] add inittree


##inground
execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~0.05 ~ facing entity @p

scoreboard players remove @p[distance=0..14] cryptid.player.harmony 3

execute store result score @s cryptid.player.random run random value 1..120000

execute if score @s cryptid.player.random matches 5..100 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 5..10 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.player.random matches 10..20 run spreadplayers ~ ~ 5 10 false @s
execute if score @s cryptid.player.random matches 60..70 run execute as @p[distance=0..10] at @s run tp @s ~ ~-3 ~
execute if score @s cryptid.player.random matches 70..80 run execute as @p[distance=0..10] at @s run playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~10 ~ ~10 10 1.5

execute if score @s cryptid.player.random matches 70..90 run particle falling_dust{block_state:{Name:red_concrete}} ~ ~2 ~ 2.4 2.4 2.4 0.1 1000 force


particle falling_dust{block_state:{Name:red_concrete}} ~ ~2 ~ 0.4 2.4 0.4 0.1 2 force

execute store result score @s cryptid.player.random run random value 1..5000

execute if score @s cryptid.player.random matches 1 run execute as @e[distance=1..20, sort=random, limit=1] at @s run function cryptid:events/general/spawnmouth
execute if score @s cryptid.player.random matches 3..20 run function cryptid:events/cryptid/sethostile


