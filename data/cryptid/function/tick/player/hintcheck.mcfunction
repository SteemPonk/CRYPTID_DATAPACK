##low harmony info
execute as @s[tag=!cryptid.info.lowharmony] at @s if score @s cryptid.player.harmony matches ..-10000 run tellraw @s {"text":"[???] Your harmony is dropping, the air is getting colder. Maybe crafting that totem pole could help...","color":"dark_red"}
execute as @s[tag=!cryptid.info.lowharmony] at @s if score @s cryptid.player.harmony matches ..-10000 run tag @s add cryptid.info.lowharmony

##low light info
execute as @s[tag=!cryptid.info.lowlight] at @s if score @s cryptid.player.harmony matches ..-5000 run tellraw @s {"text":"Staying in the dark can have adverse effects on your harmony. A torch might come in handy","color":"dark_red"}
execute as @s[tag=!cryptid.info.lowlight] at @s if score @s cryptid.player.harmony matches ..-5000 run tag @s add cryptid.info.lowlight

##vision info
execute as @s[tag=!cryptid.info.vision] at @s if score .global cryptid.day matches 5.. run tellraw @s {"text":"You can craft traps to prevent cryptids from reaching you. Look for traps in your recipe book","color":"dark_red"}
execute as @s[tag=!cryptid.info.vision] at @s if score .global cryptid.day matches 5.. run tag @s add cryptid.info.vision

##sky info
execute as @s[tag=!cryptid.info.sky] at @s if entity @s[y=110,dx=1000] run tellraw @s {"text":"[???] warning.elevation.start. Being this high up is very visible. It might be better to stay closer to the ground..","color":"dark_red"}
execute as @s[tag=!cryptid.info.sky] at @s if entity @s[y=110,dx=1000] run tag @s add cryptid.info.sky

##sky info
execute as @s[tag=!cryptid.info.glitch] at @s if entity @s[tag=cryptid.glitchscreen] run tellraw @s {"text":"Staring at cryptids seems to have a negative effect. Consider looking at the ground instead.","color":"dark_red"}
execute as @s[tag=!cryptid.info.glitch] at @s if entity @s[tag=cryptid.glitchscreen] run tag @s add cryptid.info.glitch

##cryptid info
execute as @s[tag=!cryptid.info.cryptid] at @s if entity @e[tag=cryptid,distance=0..7] run tellraw @s {"text":"That's your first cryptid. They come out when your harmony gets too low.","color":"dark_red"}
execute as @s[tag=!cryptid.info.cryptid] at @s if entity @e[tag=cryptid, distance=0..7] run tag @s add cryptid.info.cryptid

###heart info
execute as @s[tag=!cryptid.info.heart] at @s if entity @s[scores={cryptid.player.heart.distance=..40}] run tellraw @s {"text":"Staying close to hearts will anger them. Keep your distance...","color":"dark_red"}
execute as @s[tag=!cryptid.info.heart] at @s if entity @s[scores={cryptid.player.heart.distance=..40}] run tag @s add cryptid.info.heart

###item info
execute as @s[tag=!cryptid.info.items] at @s if score .global cryptid.day matches 3.. run tellraw @s {"text":"Finding new cryptids can reward you with new recipes. I would look out for those.","color":"dark_red"}
execute as @s[tag=!cryptid.info.items] at @s if score .global cryptid.day matches 3.. run tag @s add cryptid.info.items

##time info
execute as @s[tag=!cryptid.info.time] at @s if score .global cryptid.day matches 10.. run tellraw @s {"text":"The longer this world lives for, the more corrupted it will become. Watch out for new cryptids.","color":"dark_red"}
execute as @s[tag=!cryptid.info.time] at @s if score .global cryptid.day matches 10.. run tag @s add cryptid.info.time








#########items
##give support items

execute if entity @s[tag=!cryptid.givestalker] if entity @e[tag=cryptid.stalker, distance=0..3,type=vindicator] run function cryptid:action/give/bestiary/obelisk
execute if entity @s[tag=!cryptid.givestalker] if entity @e[tag=cryptid.stalker, distance=0..3,type=vindicator] run tag @s add cryptid.givestalker

execute if entity @s[tag=!cryptid.giveswordrecipe] if entity @e[tag=cryptid.deci3, distance=0..3,type=vindicator] run function cryptid:action/give/giveswordrecipe
execute if entity @s[tag=!cryptid.giveswordrecipe] if entity @e[tag=cryptid.deci3, distance=0..3,type=vindicator] run tag @s add cryptid.giveswordrecipe

execute if entity @s[tag=!cryptid.givelanternrecipe] if entity @e[tag=cryptid.cloud, distance=0..90,type=armor_stand] run function cryptid:action/give/givelanternrecipe
execute if entity @s[tag=!cryptid.givelanternrecipe] if entity @e[tag=cryptid.cloud, distance=0..90,type=armor_stand] run tag @s add cryptid.givelanternrecipe

execute if entity @s[tag=!cryptid.givepickrecipe] if entity @e[tag=cryptid.vorheart, distance=0..30,type=vindicator] run function cryptid:action/give/givepickrecipe
execute if entity @s[tag=!cryptid.givepickrecipe] if entity @e[tag=cryptid.vorheart, distance=0..30,type=vindicator] run tag @s add cryptid.givepickrecipe

execute if entity @s[tag=!cryptid.givehoneyrecipe] if entity @e[tag=cryptid.mimic, distance=0..10,type=vindicator] run function cryptid:action/give/givehoneyrecipe
execute if entity @s[tag=!cryptid.givehoneyrecipe] if entity @e[tag=cryptid.mimic, distance=0..10,type=vindicator] run tag @s add cryptid.givehoneyrecipe

execute if entity @s[tag=!cryptid.givetraprecipe] if entity @e[tag=cryptid.flooreye, distance=0..10,type=husk] run function cryptid:action/give/givetraprecipe
execute if entity @s[tag=!cryptid.givetraprecipe] if entity @e[tag=cryptid.flooreye, distance=0..10,type=husk] run tag @s add cryptid.givetraprecipe

execute if entity @s[tag=!cryptid.giveradarrecipe] if entity @e[tag=cryptid.tank, distance=0..10,type=vindicator] run function cryptid:action/give/giveradarrecipe
execute if entity @s[tag=!cryptid.giveradarrecipe] if entity @e[tag=cryptid.tank, distance=0..10,type=vindicator] run tag @s add cryptid.giveradarrecipe










