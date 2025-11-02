
##random events
execute as @s store result score @s cryptid.player.random run random value 1..30
execute if score @s cryptid.player.random matches 1 run time set midnight
execute if score @s cryptid.player.random matches 2 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.player.random matches 3 run function cryptid:events/story/storywave




execute if score @s cryptid.sleep matches ..5 run playsound minecraft:cryptid.cloud.ambience ambient @s ~ ~ ~100 11 0.2
execute if score @s cryptid.sleep matches ..5 run scoreboard players add @s cryptid.player.harmony 3000



##end
scoreboard players set @s cryptid.sleep 1400
scoreboard players set @s cryptid.player.sleeptime 0

