
##template for running primer events

##TAG AND SCOREBOARD ARE THE SAME
execute if entity @s[tag=primer.coal] run function cryptid:events/primer/primermacro {"primerscore":"primer.coal","function":"coalman"}
scoreboard players reset @s primer.coal
