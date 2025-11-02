item modify entity @s[tag=!deadradio] weapon.mainhand cryptid:setcompass2
tag @s[tag=!deadradio] add cryptid.itemcooldown
playsound minecraft:cryptid.radioshort ambient @s

scoreboard players set @s cryptid.player.radioloop 100


##sounds

stopsound @s * minecraft:cryptid.radiolong
stopsound @s * minecraft:cryptid.radiolong2
stopsound @s * minecraft:cryptid.radiolong3

playsound minecraft:cryptid.radiolong2 ambient @s ~ ~ ~ 1000 1 1





#title @s[tag=!deadradio] actionbar ["",{"text":"[RADIO]","color":"red"},": <",{"text":"Tracking Cryptid","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@e[tag=cryptid,sort=nearest, limit=1]"},{"text":"}, ","color":"#996633"},"<",{"text":"Cryptid Class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]

title @s[tag=deadradio] actionbar ["",{"text":"--- INTERFERENCE DETECTED ---","color":"gray"}]