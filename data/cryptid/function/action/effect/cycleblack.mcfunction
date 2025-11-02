
execute store result score @s cryptid.player.random run random value 1..40
execute if score @s cryptid.player.random matches 1..3 run tag @s add cryptid.cycle.black
execute if score @s cryptid.player.random matches 5..10 run tag @s remove cryptid.cycle.black
tag @s add cryptid.playdark


execute if score @s cryptid.player.random matches 1..10 run title @s[tag=cryptid.cycle.black] title {"text":"\ua018","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 10..20 run title @s[tag=cryptid.cycle.black] title {"text":"\ua019","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 20..30 run title @s[tag=cryptid.cycle.black] title {"text":"\ua020","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 30..40 run title @s[tag=cryptid.cycle.black] title {"text":"\ua021","font":"minecraft:images"}
