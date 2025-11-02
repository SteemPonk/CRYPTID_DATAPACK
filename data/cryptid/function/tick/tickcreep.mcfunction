tp @s ~ ~ ~ facing entity @p

execute store result score @s cryptid.player.random run random value 1..300


execute if score @s cryptid.player.random matches 5..50 run item replace entity @s armor.head with potion[custom_model_data=1344]
execute if score @s cryptid.player.random matches 50.. run item replace entity @s armor.head with air
execute unless block ~ ~ ~ air run tp @s ~ ~0.3 ~

execute if score @s cryptid.player.random matches 1..5 run kill @s

damage @p[distance=0..1] 1 minecraft:out_of_world by @s