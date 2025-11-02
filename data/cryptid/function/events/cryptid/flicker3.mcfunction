
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:oak_trapdoor[open=false] replace minecraft:oak_trapdoor[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:spruce_trapdoor[open=false] replace minecraft:spruce_trapdoor[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:jungle_trapdoor[open=false] replace minecraft:jungle_trapdoor[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:birch_trapdoor[open=false] replace minecraft:birch_door[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:oak_door[open=false] replace minecraft:oak_door[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:spruce_door[open=false] replace minecraft:spruce_door[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:jungle_door[open=false] replace minecraft:jungle_door[open=true]

fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:birch_door[open=false] replace minecraft:birch_door[open=true]

playsound minecraft:ambient.warped_forest.mood ambient @a[distance=0..20] ~35 ~ ~-4 5 0.1

execute as @e[distance=1..5] at @s run tp @s ~ ~ ~ facing entity @p


playsound minecraft:cryptid.torch.flicker ambient @a