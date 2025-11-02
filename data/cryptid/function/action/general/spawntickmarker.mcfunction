$summon marker ~ ~ ~ {Tags:["cryptid.tickmarker"],data:{cmd:"cryptid:tick/$(name)"}}
ride @e[tag=cryptid.tickmarker, sort=nearest, limit=1,tag=!markerfinalized] mount @s
tag @e[tag=cryptid.tickmarker, sort=nearest, limit=1,tag=!markerfinalized] add markerfinalized
tag @s add cryptid.markerapplied