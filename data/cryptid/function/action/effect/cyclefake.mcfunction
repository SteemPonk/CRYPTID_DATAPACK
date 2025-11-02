
execute store result score @s cryptid.player.random run random value 1..40
execute if score @s cryptid.player.random matches 1..3 run tag @s add cryptid.cycle.fake
execute if score @s cryptid.player.random matches 5..10 run tag @s remove cryptid.cycle.fake

execute if score @s cryptid.player.random matches 1..10 run title @s[tag=cryptid.cycle.fake] title {"text":"\ua057","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 10..20 run title @s[tag=cryptid.cycle.fake] title {"text":"\ua058","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 20..30 run title @s[tag=cryptid.cycle.fake] title {"text":"\ua059","font":"minecraft:images"}
execute if score @s cryptid.player.random matches 30..40 run title @s[tag=cryptid.cycle.fake] title {"text":"\ua060","font":"minecraft:images"}
