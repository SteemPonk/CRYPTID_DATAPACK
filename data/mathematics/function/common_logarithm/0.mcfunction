execute run scoreboard players set @s math.i 0
execute run scoreboard players set @s math.source 10
execute run function mathematics:common_logarithm/1
execute run scoreboard players operation @s math.target = @s math.i