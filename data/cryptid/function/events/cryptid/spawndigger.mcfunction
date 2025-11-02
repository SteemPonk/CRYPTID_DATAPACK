summon vindicator ~-2 ~3 ~ {Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~-2 ~3 ~ {Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~-2 ~3 ~ {Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~-2 ~3 ~ {Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute as @e[type=vindicator, tag=cryptid.digger, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdigger"}
