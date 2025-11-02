summon egg ~ ~101 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.3d,0.4d,0.7d]}
summon egg ~ ~102 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.4d,1.3d,-0.3d]}
summon egg ~ ~103 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.1d,0.7d,0.43d]}
summon egg ~ ~104 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.7d,1.2d,-0.25d]}
summon egg ~ ~105 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.7d,2.1d,0.5d]}
summon egg ~ ~106 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.7d,0.3d,-0.25d]}
summon egg ~ ~107 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.2d,1.1d,-0.86d]}
summon egg ~ ~108 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[-0.3d,1.1d,0.62d]}
summon egg ~ ~108 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[0.74d,1.1d,0.35d]}
summon egg ~ ~110 ~ {Tags:["cryptid","cryptid.octopusbuilder"],Motion:[0.2d,1.1d,-0.5d]}


execute as @e[type=egg, tag=cryptid.octopusbuilder, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickoctopus"}




execute as @e[type=egg, tag=cryptid.octopusbuilder] at @s run spreadplayers ~ ~ 10 60 false @s