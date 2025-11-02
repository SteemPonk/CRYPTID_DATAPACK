playsound minecraft:cryptid.mob.alert ambient @a ~ ~1000 ~ 100 0.1
tellraw @a ["",{"text":"You have earned my respect, surving this long.\nTake this totem, it will protect you from the void","color":"red"},{"text":"\n"},{"text":"And go beneath the bedrock.","color":"dark_red"}]
time set midnight
execute positioned ~ ~ ~2 run fill ~1 200 ~1 ~-1 -64 ~-1 air
tag @a add cryptid.glitchscreen
execute as @a at @s run function cryptid:action/give/givevoidtotem