execute run scoreboard players set @s math.i 0
execute run scoreboard players operation @s math.iteration = @s math.source
execute run scoreboard players set @s math.source 2
execute run function mathematics:right_shift/1