##netherwart if high, terracotta if low

execute store result score @s cryptid.player.random run random value 1..5

execute if score @s cryptid.player.random matches 1 run setblock ~ ~-1 ~ minecraft:structure_block{posX:-6,posY:-6,posZ:-6,mode:"LOAD",name:"cryptid:heart1"}
execute if score @s cryptid.player.random matches 2 run setblock ~ ~-1 ~ minecraft:structure_block{posX:-6,posY:-6,posZ:-6,mode:"LOAD",name:"cryptid:heart2"}
execute if score @s cryptid.player.random matches 3 run setblock ~ ~-1 ~ minecraft:structure_block{posX:-6,posY:-6,posZ:-6,mode:"LOAD",name:"cryptid:heart3"}
execute if score @s cryptid.player.random matches 4 run setblock ~ ~-1 ~ minecraft:structure_block{posX:-6,posY:-6,posZ:-6,mode:"LOAD",name:"cryptid:heart4"}
execute if score @s cryptid.player.random matches 5 run setblock ~ ~-1 ~ minecraft:structure_block{posX:-6,posY:-6,posZ:-6,mode:"LOAD",name:"cryptid:heart5"}
setblock ~ ~-2 ~ redstone_block
setblock ~ ~-1 ~ air

tag @s add heartbuilt
