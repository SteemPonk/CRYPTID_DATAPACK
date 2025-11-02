

execute store result score @s cryptid.player.random run random value 1..10000

particle block{block_state:{Name:calcite}} ~ ~ ~ 0 0 0 1 10

execute if entity @p[distance=50..] run function cryptid:events/quietkill

execute as @s[tag=watcherstart] at @s facing entity @p eyes run tp @s ^ ^ ^3 ~ ~


execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run execute at @p run tp @s ^ ^ ^-10


##lights


execute if entity @s[scores={cryptid.player.random=1..30}] if entity @p[distance=0..5] run function cryptid:action/shylight


execute if entity @s[scores={cryptid.player.random=1..10}] run damage @s 1 minecraft:arrow by @e[sort=random, distance=1..20,limit=1]


execute if entity @s[scores={cryptid.player.random=20..25}] run playsound minecraft:ambient.cave ambient @a[distance=1..20] ~ ~ ~ 1 0.5

execute if entity @s[scores={cryptid.player.random=20..40}] run damage @e[sort=random, distance=1..20,limit=1] 4 minecraft:starve by @s



execute if entity @s[scores={cryptid.player.random=1000..1010}] run function cryptid:events/quietkill

