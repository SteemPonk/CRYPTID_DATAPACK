tag @s add cryptid
tag @s add cryptid.distorted
tag @s add cryptid.timer

scoreboard players set @s cryptid.timer 100

execute as @s at @s run function cryptid:action/general/spawntickmarker {"name":"tickdistorted"}
