


##scoreboard players operation @s cryptid.reducedarmor = @p cryptid.armor

##nodrown
data merge entity @s {DeathLootTable:"minecraft:empty"}

###reset name

execute unless data entity @s CustomName run data modify entity @s CustomName set value "?????"


##default class
execute unless score @s cryptid.mob.class matches ..0 unless score @s cryptid.mob.class matches 0.. run scoreboard players set @s cryptid.mob.class 1





##weakness
attribute @s minecraft:generic.attack_damage base set 6
##buggy replacement

execute if score @p cryptid.armor matches 6..10 run effect give @s minecraft:resistance infinite 1 true
execute if score @p cryptid.armor matches 11..15 run effect give @s minecraft:fire_resistance infinite 255 true
execute if score @p cryptid.armor matches 15..20 run effect give @s minecraft:absorption infinite 2 true

# well, this is awkward!
# to whoever is reading this, I wrote out this entire macro system that would take the players armor score and add it to 
# cryptid mobs, so if the player had 10 armor, cryptid mobs would get 20 extra hp, 5 extra damage, and 20% more speed
# but its a confirmed bug that macros don't work with scoreboards!
#
# thanks mojang!

##execute store result score @s cryptid.mobhpbase run attribute @s minecraft:generic.max_health base get

##scoreboard players operation @s cryptid.mobhpbase += @s cryptid.reducedarmor
##execute store result storage cryptid:statbonus mobhpbase int 1 run scoreboard players get @s cryptid.mobhpbase

##set bonus damage

##execute store result score @s cryptid.mobattackbase run attribute @s minecraft:generic.attack_damage base get
##scoreboard players operation @s cryptid.reducedarmor /= 2 cryptid.math
##scoreboard players operation @s cryptid.mobattackbase += @s cryptid.reducedarmor
##execute store result storage cryptid:statbonus mobattackbase int 1 run scoreboard players get @s cryptid.mobattackbase


##set bonus speed

##execute store result score @s cryptid.mobspeedbase run attribute @s minecraft:generic.movement_speed base get 1000
##scoreboard players operation @s cryptid.reducedarmor *= 10 cryptid.math
##scoreboard players operation @s cryptid.reducedarmor *= 10 cryptid.math
##scoreboard players operation @s cryptid.reducedarmor *= 10 cryptid.math
##scoreboard players operation @s cryptid.mobspeedbase += @s cryptid.reducedarmor
##execute store result storage cryptid:statbonus mobspeedbase int 0.001 run scoreboard players get @s cryptid.mobspeedbase
##function cryptid:action/macrostats with storage cryptid:statbonus mobhpbase
##function cryptid:action/macrostats with storage cryptid:statbonus mobattackbase
##function cryptid:action/macrostats with storage cryptid:statbonus mobspeedbase

##add finished tag
tag @s add cryptidinit