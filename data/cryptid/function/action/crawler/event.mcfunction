execute as @s store result score @s cryptid.random run random value 1..15



execute if score @s cryptid.random matches 1 run title @a[distance=0..25] actionbar {"text":"Please help me..","color":"dark_red"}


execute if score @s cryptid.random matches 2 run title @a[distance=0..25] actionbar {"text":"I just need a little taste","color":"dark_red"}

execute if score @s cryptid.random matches 3 run title @a[distance=0..25] actionbar {"text":"They sealed me down here... please help me out","color":"dark_red"}

execute if score @s cryptid.random matches 4 run title @a[distance=0..25] actionbar {"text":"I've been starving for so long..","color":"dark_red"}

execute if score @s cryptid.random matches 5 run title @a[distance=0..25] actionbar {"text":"Just give me some food... please...","color":"dark_red"}

execute if score @s cryptid.random matches 6 run title @a[distance=0..25] actionbar {"text":"I was like you, once","color":"dark_red"}

execute if score @s cryptid.random matches 7 run title @a[distance=0..25] actionbar {"text":"I used to be like you.. until it put me down here","color":"dark_red"}

execute if score @s cryptid.random matches 8 run title @a[distance=0..25] actionbar {"text":"Please, I need to be healed","color":"dark_red"}

execute if score @s cryptid.random matches 9 run title @a[distance=0..25] actionbar {"text":"Being alive is torture","color":"dark_red"}

execute if score @s cryptid.random matches 10 run title @a[distance=0..25] actionbar {"text":"Help me, get some food","color":"dark_red"}

execute if score @s cryptid.random matches 11 run title @a[distance=0..25] actionbar {"text":"I can help you end the corruption","color":"dark_red"}

execute if score @s cryptid.random matches 12 run title @a[distance=0..25] actionbar {"text":"It can see both of us","color":"dark_red"}

execute if score @s cryptid.random matches 13 run title @a[distance=0..25] actionbar {"text":"Be a good person","color":"dark_red"}

execute if score @s cryptid.random matches 14 run title @a[distance=0..25] actionbar {"text":"I am so hungry..","color":"dark_red"}

execute if score @s cryptid.random matches 15 run title @a[distance=0..25] actionbar {"text":"It's so dark down here","color":"dark_red"}

playsound minecraft:cryptid.admin.message ambient @a ~ ~ ~ 2 0.1