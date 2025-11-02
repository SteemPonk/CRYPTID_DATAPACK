team join nodeathmessage @s


execute store result score @s cryptid.player.random run random value 1..12


execute if score @s cryptid.player.random matches 1 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" had their soul removed","color":"dark_red"}]
execute if score @s cryptid.player.random matches 2 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" is with us now.","color":"dark_red"}]
execute if score @s cryptid.player.random matches 3 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" has stopped breathing forever","color":"dark_red"}]
execute if score @s cryptid.player.random matches 4 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" is inside of us now","color":"dark_red"}]
execute if score @s cryptid.player.random matches 5 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" soul was absorbed","color":"dark_red"}]
execute if score @s cryptid.player.random matches 6 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" is filled with infinite joy","color":"dark_red"}]
execute if score @s cryptid.player.random matches 7 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" can be happy forever now","color":"dark_red"}]
execute if score @s cryptid.player.random matches 8 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":"'s skin was replaced with stone","color":"dark_red"}]
execute if score @s cryptid.player.random matches 9 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" has grown to love us","color":"dark_red"}]
execute if score @s cryptid.player.random matches 10 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" has accepted their fate","color":"dark_red"}]
execute if score @s cryptid.player.random matches 11 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" won't forget this experience","color":"dark_red"}]
execute if score @s cryptid.player.random matches 12 run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" will live on inside of us","color":"dark_red"}]


kill @s[gamemode=!spectator]
team leave @s
tp @s[gamemode=!spectator] ~ ~300 ~