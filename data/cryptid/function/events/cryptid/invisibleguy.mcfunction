summon minecraft:vindicator ~ 400 ~ {Invisible:1,CustomName:'[{"text":"010101001010101010101110"}]', Tags:["cryptid","cryptid.invisguy"], Silent:1, Invulnerable:1}
title @p actionbar [{"text":"Are you here to help us?","color":"dark_red"}]




execute as @e[type=vindicator, tag=cryptid.invisguy, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinvisguy"}


execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run effect give @s invisibility infinite 1 true
execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run effect give @s speed infinite 1 true

execute as @e[type=vindicator, tag=cryptid.invisguy] at @s run attribute @s generic.scale base set 2
