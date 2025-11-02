execute run function mathematics:permutation/0
execute run scoreboard players operation @s math.buffer = @s math.target
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.target = @s math.iteration
execute run function mathematics:factorial/0
execute run scoreboard players operation @s math.source = @s math.target
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.target = @s math.buffer
execute run function mathematics:division/0