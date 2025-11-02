
execute store result score @s cryptid.player.random run random value 1..15


execute if score @s cryptid.player.random matches 1 run playsound minecraft:entity.generic.eat ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 2 run playsound minecraft:entity.generic.explode ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 3 run playsound minecraft:entity.generic.drink ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 4 run playsound minecraft:entity.generic.explode ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 5 run playsound minecraft:entity.generic.small_fall ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 6 run playsound minecraft:entity.generic.big_fall ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 7 run playsound minecraft:ui.button.click ambient @a[distance=0..50] ~10 ~10 ~10 2
execute if score @s cryptid.player.random matches 8 run playsound minecraft:entity.sniffer.searching ambient @a[distance=0..50] ~10 ~10 ~10 2 0.1
execute if score @s cryptid.player.random matches 9 run playsound minecraft:entity.sniffer.digging ambient @a[distance=0..50] ~10 ~10 ~10 2 0.1
execute if score @s cryptid.player.random matches 10 run playsound minecraft:entity.sniffer.digging_stop ambient @a[distance=0..50] ~10 ~10 ~10 2 0.1
execute if score @s cryptid.player.random matches 11 run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @a[distance=0..50] ~10 ~10 ~10 2 0.1
execute if score @s cryptid.player.random matches 12 run playsound minecraft:block.stone.break
execute if score @s cryptid.player.random matches 13 run playsound minecraft:entity.item.break ambient @a[distance=0..50] ~10 ~10 ~10 2 0.1
execute if score @s cryptid.player.random matches 14 run playsound minecraft:entity.item.pickup ambient @a[distance=0..50] ~10 ~10 ~10 2 1
execute if score @s cryptid.player.random matches 15 run playsound minecraft:entity.generic.explode ambient @a[distance=0..50] ~10 ~10 ~10 2




function cryptid:events/cryptid/stalker1

tp @e[type=vindicator, tag=cryptid.stalker, sort=nearest, limit=1] ^ ^ ^-20