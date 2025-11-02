item replace entity @s armor.head with potion[minecraft:custom_model_data=1369]

execute positioned ~ 400 ~ run effect give @s minecraft:invisibility infinite 1 true
execute positioned ~ 400 ~ run effect give @s minecraft:resistance infinite 255 true

attribute @s minecraft:generic.scale base set 0.7
attribute @s minecraft:generic.step_height base set 1000
