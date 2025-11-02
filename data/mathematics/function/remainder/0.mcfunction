execute run scoreboard players operation @s math.buffer = @s math.target
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.buffer = @s math.source
execute run function mathematics:stack/push/0
execute run function mathematics:multiplication/0
execute run function mathematics:sign/0
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.source = @s math.buffer
execute run function mathematics:stack/seek/0
execute run scoreboard players operation @s math.source >< @s math.buffer
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.target >< @s math.source
execute run function mathematics:multiplication/0
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.source >< @s math.buffer
execute run function mathematics:stack/push/0
execute run function mathematics:division/0
execute run function mathematics:multiplication/0
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.source = @s math.buffer
execute run function mathematics:multiplication/0
execute run scoreboard players operation @s math.source = @s math.target
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.target = @s math.buffer
execute run function mathematics:subtraction/0