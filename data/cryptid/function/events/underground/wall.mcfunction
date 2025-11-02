summon minecraft:vindicator ~ ~-10 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"text":"Awakened Gaia"}]',Tags:["cryptid","cryptid.wall","cryptid.timer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.scale",base:0.01f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}


execute positioned ~ ~-10 ~ run effect give @e[type=vindicator, tag=cryptid.wall] minecraft:invisibility infinite 1 true


execute positioned ~ ~-10 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.wall,limit=1] cryptid.mob.class 4

playsound minecraft:cryptid.wall.spawn ambient @a[distance=0..120] ~ ~ ~ 12000 0.8
execute store result score @s cryptid.player.random run random value 1..10


execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=0..90] {"text":"Something deep in the earth has awakened","color":"dark_red"}
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=0..90] {"text":"Faint rumbling can be felt from below","color":"dark_red"}
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=0..90] {"text":"The earth feels as if it is alive","color":"dark_red"}
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=0..90] {"text":"Strangely, the stone around you starts to feel wet","color":"dark_red"}
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=0..90] {"text":"Something moaning can be heard in the deep stone below","color":"dark_red"}
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=0..90] {"text":"Rumbling can be felt in the walls around you","color":"dark_red"}
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=0..90] {"text":"A greater threat has emerged from the earth","color":"dark_red"}
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance=0..90] {"text":"The stone surrounding you turns to flesh","color":"dark_red"}
execute if score @s cryptid.player.random matches 9 run tellraw @a[distance=0..90] {"text":"You must leave the underground","color":"dark_red"}
execute if score @s cryptid.player.random matches 10 run tellraw @a[distance=0..90] {"text":"A mass of flesh has emerged from the stone around you","color":"dark_red"}

execute as @e[type=vindicator, tag=cryptid.wall, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickwall"}
execute as @e[type=vindicator, tag=cryptid.wall] at @s run scoreboard players set @s cryptid.timer 3000

