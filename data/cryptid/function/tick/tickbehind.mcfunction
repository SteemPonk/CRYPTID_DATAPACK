execute as @s[scores={cryptid.lookcounter=2}] run execute as @p at @s anchored eyes run tp @e[type=armor_stand, tag=cryptid.behind] ^ ^ ^2.5
execute as @s[scores={cryptid.lookcounter=2}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1369]
execute as @s[scores={cryptid.lookcounter=2}] run tag @s add cryptid.timer

execute as @s[scores={cryptid.lookcounter=2}] run effect give @a[distance=0..10] blindness 1 1 true
execute as @s[scores={cryptid.lookcounter=2}] run execute positioned as @s run tp @s ~ ~ ~ facing entity @p

##screen
tag @p add cryptid.fakescreen


execute as @s[scores={cryptid.lookcounter=2, cryptid.timer=-1}] run playsound minecraft:cryptid.jumpscare1 ambient @a ~ ~ ~ 1 0.3
execute as @s[scores={cryptid.lookcounter=2, cryptid.timer=-1}] run function cryptid:action/spawntree



execute as @s[scores={cryptid.timer=..-7}] run kill @s
execute as @s[scores={cryptid.timer=..-7}] run stopsound @a ambient minecraft:cryptid.jumpscare1
execute positioned as @s run tp @s ~ ~ ~ facing entity @p



execute if entity @p[distance=20..] run kill @s