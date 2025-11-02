

execute store result score @s cryptid.player.random run random value 1..3000

execute if score @s cryptid.player.random matches 1..3 run summon minecraft:armor_stand ~1 ~-2 ~1 {Invisible:1, NoGravity:1, Tags:["cryptid","cryptid.skyvine"],CustomName:'[{"text":"Corrupted Vine"}]'}

execute if score @s cryptid.player.random matches 10..40 run execute at @s anchored eyes facing entity @e eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^1.5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~

tp @s ^ ^ ^0.15

fillbiome ~2 ~2 ~2 ~-2 ~-2 ~-2 cryptid:empty

setblock ~ ~1 ~ bedrock
setblock ~ ~1 ~1 sculk


execute unless block ~ ~-1 ~ air run setblock ~ ~-1 ~ crimson_nylium
execute unless block ~ ~-1 ~ air run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:netherrack replace #logs
execute unless block ~ ~-1 ~ air run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:netherrack replace shroomlight


execute unless block ~ ~-2 ~ air run kill @s
execute unless block ~ ~-2 ~ air run fillbiome ~5 ~5 ~5 ~-5 ~-5 ~-5 cryptid:empty
execute unless block ~ ~-2 ~ air run execute as @e[distance=0..20] run data merge entity @s {NoAI:1}
