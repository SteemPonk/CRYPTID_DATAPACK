execute run scoreboard players operation @s math.buffer = @s math.target
execute run function mathematics:stack/push/0
execute run function mathematics:natural_logarithm/0
execute run scoreboard players set @s math.source 1
execute run function mathematics:addition/0
execute run scoreboard players set @s math.source 2
execute run function mathematics:division/0
execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players set @s math.target 2
execute run function mathematics:power/0
execute run function mathematics:square_root/1
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.target = @s math.source