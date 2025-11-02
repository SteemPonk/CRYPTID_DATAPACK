execute as @s[tag=!init] run scoreboard players set @s cryptid.timer 2000
execute as @s[tag=!init] run playsound minecraft:cryptid.jelly.cloud ambient @a ~ ~ ~ 0.16 0.1
execute as @s[tag=!init] run tag @s add init






##display tutorials

execute if score @s cryptid.timer matches 1650..1800 run title @a[distance=0..10] actionbar {"text":"Welcome to C.R.Y.P.T.I.D","color":"red"}

execute if score @s cryptid.timer matches 1500..1650 run title @a[distance=0..10] actionbar {"text":"This tutorial will explain how to increase your life expectancy to a more reasonable length","color":"red"}

execute if score @s cryptid.timer matches 1350..1500 run title @a[distance=0..10] actionbar {"text":"In your inventory you have been given several starter items. Do not lose them.","color":"red"}

execute if score @s cryptid.timer matches 1200..1350 run title @a[distance=0..10] actionbar {"text":"The radio is by far the most useful, displaying everything you need to know to survive","color":"red"}

execute if score @s cryptid.timer matches 1050..1200 run title @a[distance=0..10] actionbar {"text":"Displayed on it will be your harmony and flux, you can think of these as how much this world likes you.","color":"red"}

execute if score @s cryptid.timer matches 900..1050 run title @a[distance=0..10] actionbar {"text":"Drop those two low enough, and you won't around for long.","color":"red"}

execute if score @s cryptid.timer matches 750..900 run title @a[distance=0..10] actionbar {"text":"But keeping good behavior only delays destruction, it does not prevent it","color":"red"}

execute if score @s cryptid.timer matches 600..750 run title @a[distance=0..10] actionbar {"text":"Not looking at them, keeping away from the hearts, and staying the light will serve you well","color":"red"}

execute if score @s cryptid.timer matches 450..600 run title @a[distance=0..10] actionbar {"text":"But if you choose a more violent approach, I cannot stop you.","color":"red"}

execute if score @s cryptid.timer matches 300..450 run title @a[distance=0..10] actionbar {"text":"Past subjects have found success in building homes in ground, or under the ocean","color":"red"}

execute if score @s cryptid.timer matches 150..300 run title @a[distance=0..10] actionbar {"text":"Crafting special items, like the one you were just given, will be of huge benefit to you","color":"red"}

execute if score @s cryptid.timer matches 80..150 run title @a[distance=0..10] actionbar {"text":"Remember, your lives and time are both limited","color":"red"}

execute if score @s cryptid.timer matches 0..80 run title @a[distance=0..10] actionbar {"text":"Well, that is all I can do for you. Good luck!","color":"red"}



##bugfix
execute as @a[tag=tutorial.active, distance=9..] run playsound minecraft:cryptid.screen.corrupted ambient @a
execute as @a[tag=tutorial.active, distance=9..] run tellraw @a {"text":"Do not.","color":"red"}
execute as @a[tag=tutorial.active, distance=9..] at @e[tag=cryptid.spawnbox, type=armor_stand, limit=1] positioned ~ ~5 ~ run tp @s ~ ~ ~


##particle
particle minecraft:crimson_spore ~ ~-3 ~ 0.1 0.1 0.1 0.1 100


##end


execute if score @s cryptid.timer matches ..0 run function cryptid:tick/player/tutorial/killtutorial