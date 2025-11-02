execute anchored eyes run tp @e[sort=random, type= !player, limit=1] ^ ^ ^5
stopsound @a
playsound minecraft:cryptid.ambience.foreboding ambient @a ~ ~100 ~ 10 1 0.2
function cryptid:events/cryptid/message1
scoreboard players set @s cryptid.timer 700
