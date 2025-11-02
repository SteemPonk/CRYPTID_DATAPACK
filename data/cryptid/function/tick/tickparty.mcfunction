execute as @s[tag=!init] run scoreboard players set @s cryptid.timer 60
execute as @s[tag=!init] run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute as @s[tag=!init] run item replace entity @s armor.head with potion[custom_model_data=1375]
execute as @s[tag=!init] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .party cryptid.anitimer
execute as @s[tag=!init] run tag @s add init

execute if score @s cryptid.timer matches ..0 run kill @s