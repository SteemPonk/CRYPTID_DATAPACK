
##init


execute if score @s cryptid.timer matches 0 run function cryptid:action/distorted/detonate

execute if entity @s[tag=distorted.active] run function cryptid:action/distorted/active


execute if score @s cryptid.timer matches ..-70 run function cryptid:action/distorted/clear

tp @s ~ ~ ~ facing entity @p
