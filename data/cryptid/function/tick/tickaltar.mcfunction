execute store result score @s cryptid.player.random run random value 1..9000

execute if entity @s[tag=!init] run function cryptid:events/general/corruptionspawner
execute if entity @s[tag=!init] run tp @s ~ ~-6 ~

execute if entity @s[tag=!init] run execute store result score @s cryptid.player.random run random value 1..20

execute if entity @s[tag=!init] if score @s cryptid.player.random matches 1 run tellraw @p [{"text":"ʎɐʍɐ o⅁","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 2 run tellraw @p [{"text":"ɥsǝlɟ ɹnoʎ ǝɔıɟıɹɔɐS","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 3 run tellraw @p [{"text":"Look at us","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 4 run tellraw @p [{"text":"¿lnos ʇsol ɹǝɥʇou∀","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 5 run tellraw @p [{"text":"ᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩HᴚƎ⅁N∩H","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 6 run tellraw @p [{"text":"ǝɹǝɥ ɯoɹɟ noʎ llǝɯs uɐɔ I","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 7 run tellraw @p [{"text":"₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀₀","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 8 run tellraw @p [{"text":"¿sn ɹɐǝɟ noʎ oᗡ","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 9 run tellraw @p [{"text":"H⊥∀Ǝᗡ ᗡNO⅄Ǝᙠ ᴚ∀ƎℲ","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 10 run tellraw @p [{"text":"₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆₆","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 11 run tellraw @p [{"text":"uıɐԀuıɐԀuıɐԀuıɐԀuıɐԀuıɐԀuıɐԀ","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 12 run tellraw @p [{"text":"ǝʌɐǝl","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 13 run tellraw @p [{"text":"ʎɐʍɐ ɹɐɟ ʎɐʇs","color":"red"}]
execute if entity @s[tag=!init] if score @s cryptid.player.random matches 14 run tellraw @p [{"text":"ɘɔiᎸiɿɔɒꙅ","color":"red"}]

execute if entity @s[tag=!init] run tag @s add init

execute store result score @s cryptid.player.random run random value 1..9000

execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~0.01 ~

execute if score @s cryptid.player.random matches 1..10 run playsound minecraft:cryptid.caveeye.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.9 1
execute if score @s cryptid.player.random matches 1..5 run function cryptid:events/underground/darkeyes
execute if score @s cryptid.player.random matches 10..20 run spreadplayers ~ ~ 10 20 false @s
execute if score @s cryptid.player.random matches 50..53 run kill @s


execute if entity @p[distance=0..25, scores={cryptid.player.harmony=..-10000}] if score @s cryptid.player.random matches 43..52 run tag @s add cryptid.angrysacrifice

##harmony mode
execute if entity @p[distance=0..1] run scoreboard players add @a cryptid.player.harmony 5000
execute if entity @p[distance=0..1] run tellraw @a [{"text":"Enjoy your temporary peace","color":"red"}]
execute if entity @p[distance=0..1] run kill @p
execute if entity @p[distance=0..1] run playsound minecraft:cryptid.curator.ambient ambient @a[distance=0..1]
execute if entity @p[distance=0..1] run function cryptid:events/quietkill



execute if entity @s[tag=cryptid.angrysacrifice] run playsound minecraft:cryptid.skull1 ambient @a[distance=0..15]
execute if entity @s[tag=cryptid.angrysacrifice] run tellraw @a[distance=0..15] [{"text":"You anger us.","color":"red"}]
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/underground/quake2
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/underground/spawndecimator
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/underground/spawndecimator
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/node/block
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/node/block
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/node/block
execute if entity @s[tag=cryptid.angrysacrifice] run effect give @a[distance=0..10] slowness 10 2 true
execute if entity @s[tag=cryptid.angrysacrifice] run function cryptid:events/quietkill
