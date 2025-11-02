

summon minecraft:armor_stand ~ ~ ~ {Silent:1, NoGravity:1,Tags:["cryptid","cryptid.flicker2"], Invisible:1}
execute as @e[type=armor_stand, tag=cryptid.flicker2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickflicker2"}


fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:redstone_torch replace minecraft:torch
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
execute as @e[distance=1..5] at @s run tp @s ~ ~ ~ facing entity @p

execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.torch.flicker ambient @a

