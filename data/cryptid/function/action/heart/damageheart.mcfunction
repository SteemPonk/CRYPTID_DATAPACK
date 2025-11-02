playsound minecraft:entity.phantom.death ambient @a[distance=0..10] ~ ~ ~ 0.5 0.1
execute if score .global cryptid.day matches 1..5 run scoreboard players add .global cryptid.world.fury 1
execute if score .global cryptid.day matches 5..5 run scoreboard players add .global cryptid.world.fury 3
execute if score .global cryptid.day matches 10..15 run scoreboard players add .global cryptid.world.fury 6
execute if score .global cryptid.day matches 15..30 run scoreboard players add .global cryptid.world.fury 9
execute if score .global cryptid.day matches 30..40 run scoreboard players add .global cryptid.world.fury 12
execute if score .global cryptid.day matches 40..50 run scoreboard players add .global cryptid.world.fury 15
execute if score .global cryptid.day matches 50..70 run scoreboard players add .global cryptid.world.fury 18
execute if score .global cryptid.day matches 70.. run scoreboard players add .global cryptid.world.fury 21





execute store result score @s cryptid.random run random value 1..200


execute if score @s cryptid.random matches 1 run function cryptid:events/underground/quake1
execute if score @s cryptid.random matches 2 run function cryptid:events/underground/quake2
execute if score @s cryptid.random matches 3 run function cryptid:events/underground/spawnhand
execute if score @s cryptid.random matches 4 run function cryptid:events/underground/threat1
execute if score @s cryptid.random matches 5 run function cryptid:events/underground/spawnscreamer
execute if score @s cryptid.random matches 6 run function cryptid:events/underground/tunnel
execute if score @s cryptid.random matches 7 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.random matches 8 run function cryptid:events/cryptid/flicker5

