effect give @s minecraft:speed infinite 0 true
summon minecraft:zombified_piglin ~ ~ ~ {CustomName:'[{"text":"Brain parasite"}]',DeathLootTable:"minecraft:empty",Silent:1, attributes:[{id:"generic.scale",base:0.01f}], Tags:["cryptid","cryptid.evilcore"]}

execute as @e[type=zombified_piglin, tag=cryptid.evilcore, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickevilcore"}


tag @s add cryptid.evilmob

team join cryptid.evilmob

tag @s add cryptid


effect give @e[type=zombified_piglin, tag=cryptid.evilcore] minecraft:invisibility infinite 255 true


ride @e[type=zombified_piglin, tag=cryptid.evilcore, sort=nearest,limit=1] mount @s

function cryptid:action/general/spawntickmarker {"name":"tickevilmob"}

