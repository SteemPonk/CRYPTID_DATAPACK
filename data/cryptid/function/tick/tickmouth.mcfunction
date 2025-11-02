scoreboard players add @s cryptid.mouth 1


execute if score @s cryptid.mouth matches 100.. run function cryptid:events/quietkill

execute if score @s cryptid.mouth matches 48..60 run execute as @e[distance=0..6,tag=!cryptid] at @s run function cryptid:action/swallow

execute as @e[distance=0..6] at @s run tp @s ~ ~ ~