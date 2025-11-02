
##looking vhs part 2
execute store result score @s cryptid.player.random run random value 1..50

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.creed,limit=1,sort=nearest,distance=0..95] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @e[type=vindicator,tag=cryptid.creed,limit=1,sort=nearest,distance=0..95] add cryptid.lookingcreed

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.tank,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run effect give @e[tag=cryptid.tank,type=vindicator] speed 2 2 true





execute if entity @s run execute anchored eyes facing entity @e[type=vindicator, tag=cryptid.invisguy, limit=1,sort=nearest,tag=!agro] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run execute as @e[type=vindicator, tag=cryptid.invisguy, limit=1,sort=nearest,tag=!agro] at @s run function cryptid:action/invis/agro

execute if entity @s[scores={cryptid.jumptimer=..10}] run execute anchored eyes facing entity @e[tag=cryptid, tag=!cryptid.node, limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run scoreboard players set @s cryptid.jumptimer 12000

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.deci2,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run effect give @e[tag=cryptid.deci2,type=vindicator, sort=random, limit=1] slowness 1 100 true

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.deci4,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run tag @e[tag=cryptid.deci4,type=vindicator, sort=random, limit=1] add cryptid.lookedat

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.jelly,limit=1,sort=random,distance=0..125] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run execute as @e[tag=cryptid.jelly,type=vindicator, sort=random, limit=1] at @s run function cryptid:tick/visioncheck

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.watcher,limit=1,sort=random,distance=0..125] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run execute as @e[tag=cryptid.watcher,type=vindicator, sort=random, limit=1] at @s run function cryptid:tick/visioncheck

execute anchored eyes facing entity @e[type=villager,tag=cryptid.shy2,limit=1,sort=random,distance=0..125] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run execute as @e[tag=cryptid.shy2,type=villager, sort=random, limit=1] at @s run function cryptid:action/shy2jump

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.doppleawakened,limit=1,sort=nearest,distance=0..125] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run execute as @e[tag=cryptid.doppleawakened,type=vindicator, distance=4..40, sort=nearest, limit=1] at @s run tag @s add lookedat

execute as @s at @s anchored eyes facing entity @e[type=vindicator,tag=cryptid.fractal,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=vindicator,tag=cryptid.fractal,limit=1,sort=nearest] add cryptid.lookingfractal



