##trigger
execute as @s[tag=!prime, scores={cryptid.timer=2}] run particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.1 0.1 1 100
execute as @s[tag=!prime, scores={cryptid.timer=2}] run playsound minecraft:item.armor.equip_netherite ambient @a[distance=0..20] ~ ~ ~ 0.1
execute as @s[tag=!prime, scores={cryptid.timer=2}] run tag @s add prime

execute if entity @s[tag=!activated,tag=prime] if entity @e[sort=nearest, limit=1, distance=0.2..1,type=!armor_stand,type=!item,type=!experience_orb] run function cryptid:action/trap/tickprime
execute if entity @s[tag=activated] run function cryptid:action/trap/tickbite

execute if block ~ ~-0.5 ~ air run kill @s
execute if block ~ ~-0.5 ~ air run function cryptid:action/give/givetrap