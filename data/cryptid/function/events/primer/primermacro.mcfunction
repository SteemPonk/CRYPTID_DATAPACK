$execute if score @s $(primerscore) matches 1.. run function cryptid:events/cryptid/$(function)
$execute if score @s $(primerscore) matches 1.. run tag @s remove $(primerscore)
$execute if score @s $(primerscore) matches 1.. run scoreboard players reset @s $(primerscore)

