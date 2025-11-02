execute if entity @s[tag=!init] run function cryptid:events/general/corruptionspawner

execute if entity @s[tag=!init] run tag @s add init

execute store result score @s cryptid.player.random run random value 1..100

execute as @s at @s store result score @s cryptid.mob.movx run data get entity @s Motion[0] 100
execute as @s at @s store result score @s cryptid.mob.movy run data get entity @s Motion[1] 100
execute as @s at @s store result score @s cryptid.mob.movz run data get entity @s Motion[2] 100

item replace entity @s[scores={cryptid.mob.movx=0,cryptid.mob.movz=0}] armor.head with potion[minecraft:custom_model_data=1315]

execute if entity @s[scores={cryptid.mob.movx=1..}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1314]
execute if entity @s[scores={cryptid.mob.movz=1..}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1314]
execute if score @s cryptid.player.random matches 1..70 run item replace entity @s armor.head with air


execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run execute unless block ~ ~ ~ water run execute unless block ~ ~ ~ #flowers run execute unless block ~ ~ ~ #wall_post_override run execute at @p rotated as @p run tp @s ^-1 ^-2 ^-15



tag @a[distance=0..10] add cryptid.bosschase

execute if block ~ ~ ~ water run execute at @p run spreadplayers ~ ~ 30 40 false @s

execute if score @s cryptid.player.random matches 1..40 run damage @s 0 minecraft:player_attack by @p



particle block_marker{block_state:{Name:nether_wart_block}} ~ ~2 ~ 2 2 2 0 1

execute if score .globaltime cryptid.time matches 1..14000 unless predicate cryptid:checklight run tp @s ~ ~-1200 ~
execute if score .globaltime cryptid.time matches 1..14000 unless predicate cryptid:checklight run function cryptid:events/quietkill

##DAMAGE
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #minecraft:leaves
execute if entity @p[distance=100..] at @s run function cryptid:events/quietkill


execute if score .globalspawn cryptid.globalevent matches 100 run function cryptid:events/quietkill

execute if entity @s[tag=cryptid.tank.active] run fill ~1 ~3 ~1 ~-1 ~1 ~-1 minecraft:weeping_vines replace #minecraft:overworld_carver_replaceables



execute if score @s cryptid.player.random matches 1..30 run playsound minecraft:cryptid.tanksound ambient @a[distance=0..4] ~ ~ ~ 5 1.1

execute if score .heartbeat cryptid.globalevent matches 1 run effect give @p[distance=0..4] minecraft:levitation 1 62 false
execute if score .heartbeat cryptid.globalevent matches 3 run effect clear @p minecraft:levitation

execute store result score @s cryptid.player.random run random value 1..10000

#execute if entity @s[tag=!cryptid.tank.active] run effect give @s slowness 1 10 true

execute if entity @p[distance=0..40,scores={cryptid.player.harmony=..-9000}] if score @s cryptid.player.random matches 2..3000 run tag @s add cryptid.tank.active

execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..40] at @s run function cryptid:events/cryptid/radiodead 

execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 10..20 run execute if entity @p[distance=40..] run execute at @p run spreadplayers ~ ~ 30 40 false @s



###player damage

damage @s[tag=cryptid.tank.active] 0 minecraft:player_attack by @p
damage @p[distance=0..5] 1 minecraft:mob_attack by @s

stopsound @a[distance=0..4] player minecraft:entity.player.hurt
tag @a[distance=0..5] add cryptid.nokb
tag @a[distance=6..] remove cryptid.nokb

execute as @p[distance=0..2] at @s run function cryptid:action/death/highdeath1

tag @a remove cryptid.fearscreen
tag @a[distance=0..10] add cryptid.fearscreen
execute as @a[distance=0..5] at @s run tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.tank, sort=nearest, limit=1]
