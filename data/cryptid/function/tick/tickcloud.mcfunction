execute if entity @s[tag=!init] run tp @s ~ ~ ~ facing entity @p
execute if entity @s[tag=!init] run tag @s add init


execute store result score @s cryptid.player.random run random value 1..3000
execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.cloud.ambience ambient @a[distance=0..150] ~ ~ ~ 10 0.8 1



execute if score @s cryptid.player.random matches 1..300 run execute as @s[tag=!cryptid.activatecloud] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute if score @s cryptid.player.random matches 300.. run tp @s ^ ^ ^0.4 ~ ~

execute if entity @p[distance=0..50] run execute store result score @s cryptid.player.random run random value 1..1000


execute if score @s cryptid.player.random matches 1 run playsound minecraft:entity.ghast.ambient ambient @a[distance=0..50] ~ ~ ~ 10 0.1

execute if score @s cryptid.player.random matches 4..5 run tag @s add cryptid.activatecloud

execute at @p if entity @p[y=-100, dy=190] run execute as @s at @s run tag @s remove cryptid.activatecloud

execute if score @s cryptid.player.random matches 2..20 run playsound minecraft:entity.breeze.idle_ground ambient @a[distance=0..60] ~ ~ ~ 1 0.1

execute store result score @s cryptid.player.random run random value 1..30000

execute if score @s cryptid.player.random matches 4..40 positioned ~ ~-100 ~ if entity @p[distance=0..50] run summon minecraft:lightning_bolt ~ ~ ~

execute if score @s cryptid.player.random matches 1..3 run function cryptid:events/quietkill

execute if entity @s

execute as @s[tag=!cryptid.activatecloud] at @s run tp @s[y=185,dy=-374] ~ ~0.6 ~


execute as @s[tag=cryptid.activatecloud] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^6 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.45 ~ ~




execute if entity @p[distance=220..] run function cryptid:events/quietkill
execute as @p at @s unless entity @s[y=0,dy=400] run kill @e[tag=cryptid.cloud,type=armor_stand,sort=nearest,limit=1]
execute as @p at @s unless entity @s[y=105,dy=400] run tag @e[tag=cryptid.cloud,type=armor_stand,sort=nearest, limit=1] remove cryptid.activatecloud





execute if entity @p[distance=0..20] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/axe
execute if entity @p[distance=0..20] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/hoe
execute if entity @p[distance=0..20] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/pickaxe
execute if entity @p[distance=0..20] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #minecraft:mineable/shovel


execute if entity @p[distance=0..20] run fill ~6 ~12 ~6 ~-6 ~-1 ~-6 minecraft:weeping_vines_plant replace #minecraft:mineable/axe
execute if entity @p[distance=0..20] run fill ~6 ~12 ~6 ~-6 ~-1 ~-6 minecraft:weeping_vines_plant replace #minecraft:mineable/hoe
execute if entity @p[distance=0..20] run fill ~6 ~12 ~6 ~-6 ~-1 ~-6 minecraft:weeping_vines_plant replace #minecraft:mineable/pickaxe
execute if entity @p[distance=0..20] run fill ~6 ~12 ~6 ~-6 ~-1 ~-6 minecraft:weeping_vines_plant replace #minecraft:mineable/shovel



##onactivation

execute if entity @p[distance=..5] run execute at @p run function cryptid:events/cryptid/spawndigger


execute if entity @p[distance=..5] run playsound minecraft:cryptid.ambient ambient @a[distance=0..20] ~ ~ ~ 5 0.5
execute if entity @p[distance=..5] run particle cloud ~ ~ ~ 2.5 2.5 2.5 0.1 1500
execute if entity @p[distance=..5] run summon tnt
execute if entity @p[distance=..5] run function cryptid:events/quietkill

