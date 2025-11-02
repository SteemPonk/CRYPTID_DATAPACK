execute unless score @s math.stack.pointer matches -1..15 run scoreboard players set @s math.stack.pointer -1
execute run function mathematics:stack/push/1
execute run scoreboard players add @s math.stack.pointer 1