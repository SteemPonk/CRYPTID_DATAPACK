
setblock ~ ~3 ~ minecraft:structure_block{posX:0,posY:1,posZ:0,mode:"LOAD",name:"cryptid:arena1"}
setblock ~ ~2 ~ minecraft:structure_block{posX:-47,posY:2,posZ:-47,mode:"LOAD",name:"cryptid:arena3"}
setblock ~ ~1 ~ minecraft:structure_block{posX:0,posY:3,posZ:-47,mode:"LOAD",name:"cryptid:arena2"}
setblock ~ ~ ~ minecraft:structure_block{posX:-47,posY:4,posZ:0,mode:"LOAD",name:"cryptid:arena4"}
setblock ~1 ~ ~ redstone_block
setblock ~1 ~1 ~ redstone_block
setblock ~1 ~2 ~ redstone_block
setblock ~1 ~3 ~ redstone_block
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace redstone_block
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace structure_block

execute positioned ~ ~10 ~ run function cryptid:boss/spawn/spawnboss
