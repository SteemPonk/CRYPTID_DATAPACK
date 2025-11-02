execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players set @s math.target 942477
execute run function mathematics:subtraction/0
execute run function mathematics:stack/pop/0
execute run scoreboard players set @s math.buffer -1
execute run function mathematics:stack/push/0