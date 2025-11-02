execute as @s[tag=!init] run tp @s ~ ~-25 ~
execute as @s[tag=!init] run tag @s add init




#random
execute as @s store result score @s cryptid.player.random run random value 1..400

execute if score @s cryptid.player.random matches 1..2 run tp @s ~ ~ ~ facing entity @p



execute as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~ 0
execute as @s positioned as @s rotated as @s run tp @s[tag=!cryptid.lookingmountain] ^ ^ ^0.1


execute if score @s cryptid.player.random matches 1 run tag @s remove cryptid.lookingmountain




execute as @s positioned as @s rotated as @s unless block ~ ~27 ~ air run tp @s ~ ~0.2 ~


##actrivate

execute positioned ~ ~30 ~ if entity @p[distance=0..30, tag=!cryptid.mountain.capture] run function cryptid:action/mountain/capture
execute if score @s cryptid.timer matches 0 run function cryptid:action/mountain/kill
execute if score @s cryptid.timer matches -80 run tag @a remove cryptid.mountain.capture
execute if score @s cryptid.timer matches -80 run kill @e[type=armor_stand, tag=cryptid.fakemountain]


execute if score @s cryptid.timer matches -80..60 run tag @p[tag=cryptid.mountain.capture] add cryptid.nomove
execute if score @s cryptid.timer matches -40..0 run tag @p[tag=cryptid.mountain.capture] add cryptid.glitchscreen
execute if score @s cryptid.timer matches -10..10 run tag @p[tag=cryptid.mountain.capture] add cryptid.bosschase

##devestate
execute as @s store result score @s cryptid.player.random run random value 1..1900
execute if score @s[tag=cryptid.lookingmountain] cryptid.player.random matches 1 run tag @s add killmount

tp @s[tag=killmount] ~ ~-0.4 ~
execute if entity @s[tag=killmount, y=0, dy=-1000] run tag @a remove cryptid.mountain.capture

execute if entity @s[tag=killmount, y=0, dy=-1000] run kill @s



execute if entity @p[distance=400..] run kill @s
execute if entity @p[distance=400..] run tag @a remove cryptid.mountain.capture
