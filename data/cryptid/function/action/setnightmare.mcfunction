scoreboard players set .global cryptid.challenge 1
scoreboard players set .current cryptid.eventcap 0

playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~100 ~ 10 0.1
time set midnight


scoreboard players set .global cryptid.eventcap 300000
scoreboard players set .current cryptid.eventcap 0

scoreboard players set @a cryptid.maxlives 1
scoreboard players add .global cryptid.worldtimer 1200000
gamerule doDaylightCycle false

tellraw @a ["",{"text":"Nightmare mode is now active \nLives set to 1, harmony at minimum\nSurvive as long as possible!","color":"red"}]

scoreboard players set .global cryptid.day 300