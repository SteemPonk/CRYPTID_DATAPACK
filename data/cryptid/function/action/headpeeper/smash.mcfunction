item replace entity @s armor.head with potion[custom_model_data=1400]
execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .headpeeper cryptid.anitimer


playsound minecraft:cryptid.mob.alert ambient @a ~ ~10 ~ 3 0.1
execute as @a[distance=0..30] at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.headpeeper, sort=nearest, type=armor_stand, limit=1]
tag @a[distance=0..30] add cryptid.fakescreen

scoreboard players add @s cryptid.lookcounter 1

tag @s add cryptid
tag @s add hitting