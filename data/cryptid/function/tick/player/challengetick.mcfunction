##challenge mode
execute store result score @s cryptid.event.random run random value 1..25000
scoreboard players add @s cryptid.challengetime 1
scoreboard players operation @s cryptid.challengesec = @s cryptid.challengetime
scoreboard players operation @s cryptid.challengesec /= 20 cryptid.challengetime
title @a actionbar ["",{"text":"Seconds survived: ","color":"dark_red"},{"bold":true,"color":"red","score":{"objective":"cryptid.challengesec","name":"@s"}}]

##apply ALL events
function cryptid:events/eventhandler/lowevents
function cryptid:events/eventhandler/midevents
function cryptid:events/eventhandler/highevents
##memory cleanup
kill @e[tag=cryptid, distance=100..]



