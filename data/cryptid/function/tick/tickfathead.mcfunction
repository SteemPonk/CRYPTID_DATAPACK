

execute at @p run tp @s[tag=!broken] ~ ~90 ~



##course correction

execute at @s if entity @s[y=170, dy=-1000] run execute positioned as @s[tag=!broken] run tp @s ~ 170 ~

execute positioned as @s rotated as @s run tp @s[tag=!broken] ~ ~ ~ facing entity @p



##awakened mode



execute as @s[tag=broken] positioned as @s run tp @s ~ ~-0.1 ~ ~ 90

execute as @s[tag=broken] run execute as @e[distance=1..30] at @s run function cryptid:events/quietkill
execute as @s[tag=broken] run execute as @e[distance=1..70] at @s run damage @s 1.2 cryptid:cryptid by @e[tag=cryptid.fathead, sort=nearest,limit=1]


##look
execute if score @s cryptid.lookcounter matches 1.. run tag @s add cryptid.timer


execute if score @s cryptid.timer matches -760 run playsound minecraft:cryptid.bone.knock ambient @a ~ ~10 ~ 10 0.1

execute if score @s cryptid.timer matches -1000 run execute at @p run function cryptid:events/cryptid/flooreye
execute if score @s cryptid.timer matches -1500 run playsound minecraft:cryptid.bone.knock ambient @a ~ ~10 ~ 10 0.1


execute if score @s cryptid.timer matches -2000 run execute as @a at @s run tp @s ~ ~ ~ facing entity @e[tag=cryptid.fathead, sort=nearest,limit=1]

execute if score @s cryptid.timer matches -2000 run tag @s add awake
execute if score @s cryptid.timer matches -2000 run time set noon
execute if score @s cryptid.timer matches -2000 run playsound minecraft:cryptid.bone.knock ambient @a ~ ~10 ~ 10 0.1


execute if score @s cryptid.timer matches -2560 run playsound minecraft:cryptid.bone.knock ambient @a ~ ~10 ~ 10 0.1


execute if score @s cryptid.timer matches -3000 run execute at @p run function cryptid:events/general/spawnheadpeeper


execute if score @s cryptid.timer matches -3760 run playsound minecraft:cryptid.bone.knock ambient @a ~ ~10 ~ 10 0.1


execute if score @s cryptid.timer matches -4000 run tag @s add broken
execute if score @s cryptid.timer matches -4000 run playsound minecraft:cryptid.skull1 ambient @a ~ ~ ~ 4 0.1
execute if score @s cryptid.timer matches -4000 run execute at @p run function cryptid:events/general/sinkhole

execute if score @s cryptid.timer matches ..-7600 run kill @s


execute if entity @s[tag=awake] run item replace entity @s armor.head with potion[custom_model_data=1401]
execute if entity @s[tag=broken] run item replace entity @s armor.head with potion[custom_model_data=1403]