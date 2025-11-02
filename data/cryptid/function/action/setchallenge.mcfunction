clear @a minecraft:sugar[minecraft:custom_data~{cryptid.amulet:1b}]

tellraw @a ["",{"text":"Want to change things up?","bold":true},"\nSelect a challenge mode. ",{"text":"You can only do this once","underlined":true},"\n\n",{"text":"CLICK","clickEvent":{"action":"run_command","value":"/function cryptid:action/seteasy"},"hoverEvent":{"action":"show_text","contents":"Easy mode"},"color":"yellow"}," ",{"text":"-> [Easy] - The easy experience. 10 lives, no cryptids, a very slow start!\nYou're probably scared easily.\n","color":"#401166"}]


tellraw @a [{"text":"CLICK","clickEvent":{"action":"run_command","value":"/function cryptid:action/setdefault"},"hoverEvent":{"action":"show_text","contents":"Default mode"},"color":"yellow"}," ",{"text":"-> [Default] - The standard experience. 5 lives, natural spawning, a slow start!\nYou're probably bad at the game","color":"#993366"},"\n\n",{"text":"CLICK","clickEvent":{"action":"run_command","value":"/function cryptid:action/setmanic"},"hoverEvent":{"action":"show_text","contents":"Manic mode"},"color":"yellow","bold":true}," ",{"text":"-> [Manic] - A little trickier. 3 lives, fast start, and boosted spawns.\nHarmony will only be allowed in the negatives\nDays may pass faster\nGriefing becomes more common","color":"dark_red"},"\n\n",{"text":"CLICK","clickEvent":{"action":"run_command","value":"/function cryptid:action/setnightmare"},"hoverEvent":{"action":"show_text","contents":"Nightmare mode"},"color":"yellow","bold":true}," ",{"text":"-> [NIGHTMARE] - 1 life, constant spawns, permanent -20k harmony.\nCertain safeties will be disabled.\nBosses spawn 3x more.\nAll enemies will be much stronger","color":"red"}]


playsound minecraft:block.bell.use ambient @a ~ ~100 ~ 10 0.1
