
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:oak_trapdoor[open=true] replace minecraft:oak_trapdoor[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:spruce_trapdoor[open=true] replace minecraft:spruce_trapdoor[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:jungle_trapdoor[open=true] replace minecraft:jungle_trapdoor[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:birch_trapdoor[open=true] replace minecraft:birch_trapdoor[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:oak_door[open=true] replace minecraft:oak_door[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:spruce_door[open=true] replace minecraft:spruce_door[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:jungle_door[open=true] replace minecraft:jungle_door[open=false]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:birch_door[open=true] replace minecraft:birch_door[open=false]


execute as @e[distance=1..5] at @s run tp @s ~ ~ ~ facing entity @p

playsound minecraft:ambient.cave ambient @p[distance=0..40] ~ ~ ~ 5 1

