

##tickflickerstands

execute store result score @e[tag=cryptid.flicker2,type=armor_stand] cryptid.player.random run random value 1..70
execute as @e[tag=cryptid.flicker2, type=minecraft:armor_stand,scores={cryptid.player.random=1..40}] at @s run function cryptid:events/cryptid/standflicker
execute as @e[tag=cryptid.flicker2, type=minecraft:armor_stand,scores={cryptid.player.random=40..70}] at @s run function cryptid:events/cryptid/standflicker2
execute as @e[tag=cryptid.flicker2, type=minecraft:armor_stand,scores={cryptid.player.random=70}] at @s run kill @s

