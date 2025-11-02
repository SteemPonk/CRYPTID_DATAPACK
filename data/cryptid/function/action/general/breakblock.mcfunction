##summon temp
loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe[enchantments={levels:{silk_touch:1}}]
tag @e[type=item, sort=nearest, limit=1] add cryptid.tempitem
##set into storage
data remove storage cryptid:tempblock block
execute unless block ~ ~ ~ air run data modify storage cryptid:tempblock block.id set from entity @e[type=item,limit=1,sort=nearest, tag=cryptid.tempitem] Item.id
##kill
kill @e[type=item,tag=cryptid.tempitem]



execute unless block ~ ~ ~ air run function cryptid:action/general/blockmacro with storage cryptid:tempblock block
