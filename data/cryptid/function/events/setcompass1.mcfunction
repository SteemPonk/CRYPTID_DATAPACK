item modify entity @s[tag=!deadradio] weapon.mainhand cryptid:setcompass
tag @s[tag=!deadradio] add cryptid.itemcooldown
playsound minecraft:cryptid.radioshort ambient @s


scoreboard players set @s cryptid.player.radioloop 100


##sounds

stopsound @s * minecraft:cryptid.radiolong
stopsound @s * minecraft:cryptid.radiolong2
stopsound @s * minecraft:cryptid.radiolong3

playsound minecraft:cryptid.radiolong ambient @s ~ ~ ~ 1000 1 1


#title @s clear
#title @s[tag=!deadradio] actionbar ["",{"text":"[RADIO]","color":"red"},": <",{"text":"Flux Rating","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.flux","name":"@s"}},{"color":"#996633","text":"}, "},"<",{"text":"Harmony","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.harmony","name":"@s"}},{"color":"#996633","text":"},"},"<",{"text":"Strength Rating","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.strength","name":"@s"}},{"color":"#996633","text":"}"}]

title @s[tag=deadradio] actionbar ["",{"text":"--- INTERFERENCE DETECTED ---","color":"gray"}]