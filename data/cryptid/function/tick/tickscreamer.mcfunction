#####################other ai,s acticate when near players

##rand
execute store result score @s cryptid.player.random run random value 1..200
##unactivated
execute if entity @p[distance=19..] if score @s cryptid.player.random matches 50..100 run tag @s remove activated
##activated behavior
execute if entity @p[distance=0..19] if score @s[tag=!activated] cryptid.player.random matches 1..50 run tag @s add activated


##item
item replace entity @s[tag=activated] armor.head with potion[minecraft:custom_model_data=1358]
item replace entity @s[tag=!activated] armor.head with air




##other
execute positioned as @s if entity @p[distance=10..] run tp @s ^ ^ ^ facing entity @p
execute positioned as @s rotated as @s unless block ~ ~4 ~ air run tp @s[tag=activated] ^ ^ ^0.08



##execute un-init
execute as @s[tag=!init] at @s run function cryptid:action/screamer/findblock 
execute as @s[tag=!activated] positioned as @s anchored eyes rotated as @s if block ^ ^ ^7 air run tag @s remove init





##palysound
execute store result score @s cryptid.player.random run random value 1..1200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.spirit ambient @a[distance=0..30] ~ ~ ~ 10 1


##water
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace water


##jumpscare

execute if score @s cryptid.timer matches ..-10 run function cryptid:events/quietkill


execute if entity @p[distance=0..8] if score @s cryptid.player.random matches 1..25 run function cryptid:action/screamer/jump



##kill events
execute store result score @s cryptid.player.random run random value 1..2000
execute if score @s cryptid.player.random matches 1 run function cryptid:events/quietkill
execute if score @s[tag=activated] cryptid.player.random matches 1 if entity @p[distance=0..20] if block ~ ~3 ~ air run function cryptid:events/underground/spawndecimator



#####################################failcheck
execute at @s as @s[y=50, dy=1000] run function cryptid:action/screamer/reset

##find player
execute if entity @p[distance=30..70] if score @s cryptid.player.random matches 3 run function cryptid:action/screamer/reset




