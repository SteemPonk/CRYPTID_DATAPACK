tp @s ~ -1000 ~
playsound minecraft:ambient.cave ambient @a
tag @a[distance=0..10] add cryptid.glitchscreen
particle block_marker{block_state:{Name:red_concrete}} ~ ~1 ~ 0.8 0.8 0.8 0 20
particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.001 400
playsound minecraft:cryptid.screen.corrupted ambient @a ~ ~ ~ 10 2

kill @s
