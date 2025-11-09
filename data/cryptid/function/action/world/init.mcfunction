##set up scores
scoreboard players set .global cryptid.eventcap 4
scoreboard players set .global cryptid.challenge 0

##forceload boss and remove
execute in cryptid:below run forceload add 100 100 -100 -100
execute in cryptid:below positioned 0 60 0 run function cryptid:boss/spawn/spawnarena
execute in cryptid:below run forceload remove 100 100 -100 -100