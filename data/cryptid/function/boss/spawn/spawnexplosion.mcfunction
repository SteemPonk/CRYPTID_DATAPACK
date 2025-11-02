summon armor_stand ~ ~ ~ {Tags:["bosscryptid","boss.explosion"],NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1388},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[tag=boss.explosion, type=armor_stand] at @s run attribute @s minecraft:generic.scale base set 4








##fram
execute as @e[type=armor_stand, sort=nearest,limit=1, tag=boss.explosion] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .explod cryptid.anitimer



particle minecraft:explosion ~ ~ ~ 4 4 4 0.1 200
playsound minecraft:entity.warden.sonic_boom ambient @a ~ ~ ~ 5 0.1
particle dust_color_transition{from_color:[0.88,0.12,0.31],to_color:[0.43,0.09,0.05],scale:4.0} ~ ~1 ~ 4 4 4 100 600


execute as @a[distance=0..12] at @s run damage @s 10 minecraft:wind_charge