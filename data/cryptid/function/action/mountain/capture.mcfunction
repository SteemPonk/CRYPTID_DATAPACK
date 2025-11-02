tag @s add cryptid.timer
scoreboard players set @s cryptid.timer 240

item replace entity @s armor.head with air

tag @p add cryptid.mountain.capture
playsound minecraft:cryptid.owl.spawn ambient @p[tag=cryptid.mountain.capture] ~ ~ ~ 100 1
