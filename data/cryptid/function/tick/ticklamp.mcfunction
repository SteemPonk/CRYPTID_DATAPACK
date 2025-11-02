

execute store result score @s cryptid.player.random run random value 1..10000



##ihgnore light
fill ~ ~ ~ ~ ~5 ~ air replace light





execute if entity @p[distance=120..] run tag @s add tokill
execute if entity @s[tag=tokill] at @s run function cryptid:events/quietkill


##light source
execute if entity @s[tag=!tokill] run fill ~ ~ ~ ~ ~5 ~ light


execute as @s[tag=watcherstart] at @s facing entity @p eyes run tp @s ^ ^ ^3 ~ ~



##lights




execute store result score @s cryptid.player.random run random value 1..1000


execute if entity @p[distance=0..16] if score @s cryptid.player.random matches 1..20 run tag @s add armed


execute as @s[tag=armed, scores={cryptid.player.random=1..250}] at @s run tp @s ~ ~ ~0.01
execute as @s[tag=armed, scores={cryptid.player.random=250..500}] at @s run tp @s ~ ~ ~-0.01
execute as @s[tag=armed, scores={cryptid.player.random=500..750}] at @s run tp @s ~0.01 ~ ~
execute as @s[tag=armed, scores={cryptid.player.random=750..1000}] at @s run tp @s ~-0.01 ~ ~


execute if entity @s[tag=armed, scores={cryptid.player.random=10..14}] if entity @p[distance=0..3,tag=!cryptid.mouthtarget] run execute as @p at @s run function cryptid:events/general/spawnmouth

execute if entity @s[tag=armed, scores={cryptid.player.random=1}] if entity @p[distance=0..4] run function cryptid:action/shylight

execute if entity @s[tag=armed, scores={cryptid.player.random=3..12}] run function cryptid:events/cryptid/flicker5

execute if entity @s[tag=armed, scores={cryptid.player.random=12..21}] run playsound minecraft:ambient.cave ambient @a[distance=1..20] ~ ~ ~ 1 0.5

execute if entity @s[tag=armed, scores={cryptid.player.random=20..35}] run damage @e[sort=random, distance=1..20,limit=1] 4 minecraft:starve by @s



execute if entity @p[distance=50..] if entity @s[scores={cryptid.player.random=1000..1020}] run tag @s add tokill

execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.lamp.ambient ambient @a[distance=0..50]



