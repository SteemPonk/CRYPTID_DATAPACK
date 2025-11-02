execute unless block ~ ~ ~ glass run function cryptid:events/cryptid/fakehouse
execute unless block ~ ~ ~ glass run damage @p 4 cryptid:chomp by @s
execute unless block ~ ~ ~ glass run playsound minecraft:cryptid.world.infection ambient @a ~ ~ ~ 1 0.5
execute unless block ~ ~ ~ glass run particle minecraft:infested ~ ~ ~ 1 1 1 0.1 1500
execute unless block ~ ~ ~ glass run kill @s







##kill
execute if score @s cryptid.timer matches ..-1000 run kill @s