
##godlander tool animation frame provider
execute store result score .global cryptid.anitimer run time query gametime
scoreboard players operation .global cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .global cryptid.anitimer -= offset cryptid.anitimer
scoreboard players operation .global cryptid.anitimer %= 120 cryptid.anitimer
##godlander tool animation frame provider for party
execute store result score .party cryptid.anitimer run time query gametime
scoreboard players operation .party cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .party cryptid.anitimer -= offset.party cryptid.anitimer
scoreboard players operation .party cryptid.anitimer %= 80 cryptid.anitimer
##another frame animator
execute store result score .crawler cryptid.anitimer run time query gametime
scoreboard players operation .crawler cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .crawler cryptid.anitimer %= 70 cryptid.anitimer
##another frame animator
execute store result score .kraken cryptid.anitimer run time query gametime
scoreboard players operation .kraken cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .kraken cryptid.anitimer %= 120 cryptid.anitimer
##another frame animator
execute store result score .coal cryptid.anitimer run time query gametime
scoreboard players operation .coal cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .coal cryptid.anitimer %= 200 cryptid.anitimer
##another frame animator
execute store result score .explod cryptid.anitimer run time query gametime
scoreboard players operation .explod cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .explod cryptid.anitimer -= offset.explod cryptid.anitimer
scoreboard players operation .explod cryptid.anitimer %= 100 cryptid.anitimer
##another frame animator
execute store result score .bosshand cryptid.anitimer run time query gametime
scoreboard players operation .bosshand cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .bosshand cryptid.anitimer %= 80 cryptid.anitimer
##another frame animator
execute store result score .headpeeper cryptid.anitimer run time query gametime
scoreboard players operation .headpeeper cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .headpeeper cryptid.anitimer %= 50 cryptid.anitimer
## another frame animator
execute store result score .global cryptid.anitimer2 run time query gametime
scoreboard players operation .global cryptid.anitimer2 %= 24000 cryptid.anitimer2
scoreboard players operation .global cryptid.anitimer2 %= 1200 cryptid.anitimer2

