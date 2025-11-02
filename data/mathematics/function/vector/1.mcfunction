execute run scoreboard players set @s math.i 0
execute run scoreboard players operation @s math.iteration = @s math.source
execute if score @s math.iteration matches 33.. run scoreboard players set @s math.iteration 32
execute run scoreboard players set @s math.source 942477
execute run function mathematics:multiplication/0
execute run scoreboard players set @s math.source 1800
execute run function mathematics:division/0
execute run scoreboard players set @s math.buffer 1
execute run function mathematics:stack/push/0
execute if score @s math.target matches 471238..942477 run function mathematics:vector/2a
execute if score @s math.target matches -942478..-471239 run function mathematics:vector/2b
execute run scoreboard players set @s math.source 3579
execute run function mathematics:multiplication/0
execute run scoreboard players set @s math.x 0
execute run scoreboard players set @s math.y 652032874
execute run scoreboard players operation @s math.z = @s math.target
execute run function mathematics:vector/2c
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.source = @s math.buffer
execute run scoreboard players operation @s math.target = @s math.y
execute run function mathematics:multiplication/0
execute run scoreboard players operation @s math.y = @s math.target
execute run scoreboard players operation @s math.target = @s math.x
execute run function mathematics:negativity/0
execute run scoreboard players operation @s math.x = @s math.target