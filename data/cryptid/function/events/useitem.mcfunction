advancement revoke @s only cryptid:useitem


##compass commands
tag @s remove cryptid.itemcooldown
execute if items entity @s[tag=!cryptid.itemcooldown,scores={cryptid.radiocooldown=..1}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run function cryptid:events/setcompass3
execute if items entity @s[tag=!cryptid.itemcooldown,scores={cryptid.radiocooldown=..1}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run function cryptid:events/setcompass2
execute if items entity @s[tag=!cryptid.itemcooldown,scores={cryptid.radiocooldown=..1}] weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run function cryptid:events/setcompass1
tag @s remove cryptid.itemcooldown
execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.firstcompass:1b}] run item modify entity @s weapon.mainhand cryptid:setcompass

execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.amulet:1b}] run function cryptid:action/setchallenge

scoreboard players set @s cryptid.radiocooldown 5

##other commands









