

execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..30 run function cryptid:events/quietkill


execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..10] at @s run effect give @s minecraft:slowness 1


execute as @p at @s run tp @s @e[tag=cryptid.fakeworld,sort=nearest, limit=1]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:nether_wart_block replace #minecraft:base_stone_overworld


execute if entity @p[distance=4..] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1309]


execute if entity @p[distance=0..4] if score @s cryptid.player.random matches 1..300 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1309]

execute if entity @p[distance=0..4] if score @s cryptid.player.random matches 300..1000 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1310]

