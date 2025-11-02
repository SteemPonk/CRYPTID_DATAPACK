execute run scoreboard players operation @s math.buffer = @s math.iteration
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.buffer = @s math.i
execute run function mathematics:stack/push/0
execute run scoreboard players operation @s math.target = @s math.z
execute run function mathematics:sign/0
execute run scoreboard players operation @s math.d = @s math.target

execute run scoreboard players operation @s math.target = @s math.y
execute run function mathematics:stack/seek/0
execute run scoreboard players operation @s math.i = @s math.buffer
execute run scoreboard players operation @s math.source = @s math.i
execute run function mathematics:right_shift/0
execute run scoreboard players operation @s math.source = @s math.d
execute run function mathematics:multiplication/0
execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players operation @s math.target = @s math.x
execute run function mathematics:addition/0
execute run scoreboard players operation @s math.tx = @s math.target

execute run scoreboard players operation @s math.target = @s math.x
execute run function mathematics:stack/seek/0
execute run scoreboard players operation @s math.i = @s math.buffer
execute run scoreboard players operation @s math.source = @s math.i
execute run function mathematics:right_shift/0
execute run scoreboard players operation @s math.source = @s math.d
execute run function mathematics:multiplication/0
execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players operation @s math.target = @s math.y
execute run function mathematics:subtraction/0
execute run scoreboard players operation @s math.ty = @s math.target

execute run function mathematics:stack/seek/0
execute run scoreboard players operation @s math.i = @s math.buffer
execute if score @s math.i matches 0 run scoreboard players set @s math.target 843314856
execute if score @s math.i matches 1 run scoreboard players set @s math.target 497837829
execute if score @s math.i matches 2 run scoreboard players set @s math.target 263043836
execute if score @s math.i matches 3 run scoreboard players set @s math.target 133525158
execute if score @s math.i matches 4 run scoreboard players set @s math.target 67021686
execute if score @s math.i matches 5 run scoreboard players set @s math.target 33543515
execute if score @s math.i matches 6 run scoreboard players set @s math.target 16775850
execute if score @s math.i matches 7 run scoreboard players set @s math.target 8388437
execute if score @s math.i matches 8 run scoreboard players set @s math.target 4194282
execute if score @s math.i matches 9 run scoreboard players set @s math.target 2097149
execute if score @s math.i matches 10 run scoreboard players set @s math.target 1048575
execute if score @s math.i matches 11 run scoreboard players set @s math.target 524287
execute if score @s math.i matches 12 run scoreboard players set @s math.target 262143
execute if score @s math.i matches 13 run scoreboard players set @s math.target 131071
execute if score @s math.i matches 14 run scoreboard players set @s math.target 65535
execute if score @s math.i matches 15 run scoreboard players set @s math.target 32767
execute if score @s math.i matches 16 run scoreboard players set @s math.target 16383
execute if score @s math.i matches 17 run scoreboard players set @s math.target 8191
execute if score @s math.i matches 18 run scoreboard players set @s math.target 4095
execute if score @s math.i matches 19 run scoreboard players set @s math.target 2047
execute if score @s math.i matches 20 run scoreboard players set @s math.target 1023
execute if score @s math.i matches 21 run scoreboard players set @s math.target 511
execute if score @s math.i matches 22 run scoreboard players set @s math.target 255
execute if score @s math.i matches 23 run scoreboard players set @s math.target 127
execute if score @s math.i matches 24 run scoreboard players set @s math.target 63
execute if score @s math.i matches 25 run scoreboard players set @s math.target 31
execute if score @s math.i matches 26 run scoreboard players set @s math.target 15
execute if score @s math.i matches 27 run scoreboard players set @s math.target 8
execute if score @s math.i matches 28 run scoreboard players set @s math.target 4
execute if score @s math.i matches 29 run scoreboard players set @s math.target 2
execute if score @s math.i matches 30 run scoreboard players set @s math.target 1
execute if score @s math.i matches 31 run scoreboard players set @s math.target 0
execute run scoreboard players operation @s math.source = @s math.d
execute run function mathematics:multiplication/0
execute run scoreboard players operation @s math.source = @s math.target
execute run scoreboard players operation @s math.target = @s math.z
execute run function mathematics:subtraction/0
execute run scoreboard players operation @s math.tz = @s math.target

execute run scoreboard players operation @s math.x = @s math.tx
execute run scoreboard players operation @s math.y = @s math.ty
execute run scoreboard players operation @s math.z = @s math.tz
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.i = @s math.buffer
execute run function mathematics:stack/pop/0
execute run scoreboard players operation @s math.iteration = @s math.buffer
execute run scoreboard players add @s math.i 1
execute run function mathematics:vector/2c