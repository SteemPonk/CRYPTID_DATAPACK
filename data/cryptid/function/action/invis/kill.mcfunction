function cryptid:events/general/jump1
tp @p ~ ~ ~ facing entity @e[sort=random, limit=1]
particle minecraft:crimson_spore ~ ~ ~ 1 1 1 0.01 1000
item replace entity @p armor.head with minecraft:red_concrete
function cryptid:action/spawntree
damage @p 7 cryptid:chomp by @s
kill @s
tp @s ~ ~10 ~
