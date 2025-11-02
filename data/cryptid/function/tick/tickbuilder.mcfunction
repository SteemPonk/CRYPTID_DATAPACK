

execute as @s store result score @s cryptid.player.random run random value 1..480



damage @s 0 minecraft:player_attack by @p
effect give @s speed infinite 20 true
effect give @s minecraft:invisibility infinite 20 true
execute positioned ~3 ~3 ~3 run fill ~-1 ~200 ~ ~ ~-10 ~1 minecraft:netherrack
kill @s[scores={cryptid.player.random=1}]