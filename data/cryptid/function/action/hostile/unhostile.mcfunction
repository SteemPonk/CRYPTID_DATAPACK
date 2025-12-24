tag @s remove cryptid.evilmob
#tag @s add cryptid.infested
team leave @s
#execute as @s[type=!player,tag=cryptid.infested, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinfested"}

##need to fix so that un hostile mobs return to infested