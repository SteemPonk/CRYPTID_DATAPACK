tag @s remove inrange
execute if entity @p[distance=0..35] at @s run tag @s add inrange


##angrytick
execute as @s[tag=angry] at @s run function cryptid:action/crawler/angrytick



##model logic
execute if entity @s[tag=!angry] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1378]

##slow
execute as @s[tag=!angry] at @s run effect give @s slowness 3 255 true


##randomly anger and remove anger


##first l;ook at playters
execute if entity @p[distance=0..20] run tp @s[tag=!angry] ~ ~ ~ facing entity @p

##then aggro
execute if score @s[tag=!angry] cryptid.random matches 1..30 if entity @p[distance=0..4] run function cryptid:action/crawler/anger

execute if score @s[tag=!angry] cryptid.random matches 1..15 if entity @p[distance=0..10] run function cryptid:action/crawler/anger

execute if score @s[tag=!angry] cryptid.random matches 1..10 if entity @p[distance=5..20] run function cryptid:action/crawler/event


##random
execute as @s store result score @s cryptid.random run random value 1..2000


##sound player
execute if score @s[tag=!inrange] cryptid.random matches 1..10 run playsound minecraft:cryptid.crawler.ambient ambient @a ~ ~ ~ 4 0.8


##try and catch to find player
execute if score @s[tag=!inrange] cryptid.random matches 1..50 run function cryptid:action/crawler/move


##kill
execute if score @s cryptid.timer matches ..-2000 run function cryptid:action/general/killsurface


execute if entity @p[distance=120..] run kill @s




