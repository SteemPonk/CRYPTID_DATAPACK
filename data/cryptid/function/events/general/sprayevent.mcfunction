
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray
execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^7 run function cryptid:events/general/spawnspray



damage @s 3 minecraft:drown by @e[tag=cryptid, sort=nearest, limit=1]

scoreboard players remove @s cryptid.player.harmony 2000

playsound minecraft:cryptid.caveeye.ambient ambient @a[distance=0..60] ~ ~ ~ 20 1 1

playsound minecraft:ambient.nether_wastes.mood ambient @a[distance=0..20] ~ ~-10 ~ 20 1 1


function cryptid:events/cryptid/flicker4