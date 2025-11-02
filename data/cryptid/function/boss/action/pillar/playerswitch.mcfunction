
##look
tp @s ~ ~ ~ facing entity @p


##flat

execute rotated as @s run tp @s ~ ~ ~ ~ 0


##square



execute rotated as @s run execute if entity @a[y_rotation=145..180] run tp @s ~ ~ ~ 0 0
execute rotated as @s run execute if entity @a[y_rotation=-45..-180] run tp @s ~ ~ ~ 0 0

execute rotated as @s run execute if entity @a[y_rotation=45..145] run tp @s ~ ~ ~ -90 0
execute rotated as @s run execute if entity @a[y_rotation=-45..45] run tp @s ~ ~ ~ 180 0
execute rotated as @s run execute if entity @a[y_rotation=-145..-45] run tp @s ~ ~ ~ 90 0

playsound minecraft:entity.villager.work_weaponsmith ambient @a ~ ~ ~ 1 0.1