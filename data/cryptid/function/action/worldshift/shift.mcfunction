
execute as @s store result score @s cryptid.random run random value 1..2



##fill1
execute if score @s cryptid.random matches 1 run clone ~15 ~-14 ~35 ~ ~12 ~-5 ~ ~15 ~
execute if score @s cryptid.random matches 1 run clone ~15 ~15 ~40 ~ ~35 ~ ~ ~-17 ~8
execute if score @s cryptid.random matches 1 run fill ~15 ~14 ~40 ~ ~45 ~ air


###fill2

execute if score @s cryptid.random matches 2 run clone ~ ~-10 ~72 ~ ~10 ~-72 ~ ~11 ~-9
execute if score @s cryptid.random matches 2 run clone ~ ~11 ~-9 ~ ~31 ~135 ~ ~-10 ~-66
execute if score @s cryptid.random matches 2 run fill ~ ~11 ~-9 ~ ~25 ~135 air

kill @s