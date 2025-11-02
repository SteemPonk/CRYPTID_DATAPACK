summon chicken ~ ~620 ~ {Tags:["cryptid","cryptid.placestructure"]}

execute positioned ~ ~620 ~ as @e[type=chicken,tag=cryptid.placestructure, sort=nearest] at @s run function cryptid:action/general/placerandom {"min":"50","max":"130","underheight":"500"}



execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1] at @s run place structure cryptid:uncanny




execute as @e[type=chicken,tag=cryptid.placestructure] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a[distance=0..60] ~ ~ ~ 1 0.5

kill @e[type=chicken, tag=cryptid.placestructure]