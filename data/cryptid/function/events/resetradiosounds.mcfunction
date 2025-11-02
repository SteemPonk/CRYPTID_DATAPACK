title @s clear

stopsound @s * minecraft:cryptid.radiolong
stopsound @s * minecraft:cryptid.radiolong2
stopsound @s * minecraft:cryptid.radiolong3

execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run playsound minecraft:cryptid.radiolong ambient @s ~ ~ ~ 1000 1 1
execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run playsound minecraft:cryptid.radiolong2 ambient @s ~ ~ ~ 1000 1 1
execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run playsound minecraft:cryptid.radiolong3 ambient @s ~ ~ ~ 1000 1 1
