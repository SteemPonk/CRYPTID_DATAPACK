execute run function mathematics:vector/0
execute run scoreboard players operation @s math.target = @s math.x
execute run scoreboard players set @s math.source 8
execute run function mathematics:division/0
execute run scoreboard players operation @s math.buffer = @s math.target
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.target = @s math.y
execute run scoreboard players set @s math.source 2
execute run function mathematics:multiplication/0
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.source = @s math.buffer
execute run function mathematics:division/0