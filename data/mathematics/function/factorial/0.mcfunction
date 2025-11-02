execute run scoreboard players set @s math.i 0
execute run scoreboard players operation @s math.iteration = @s math.target
execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players set @s math.target 1
execute run function mathematics:factorial/1