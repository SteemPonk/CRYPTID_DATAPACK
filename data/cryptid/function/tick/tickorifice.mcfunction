#execute store result score @s cryptid.player.random run random value 1..20000

execute as @s[tag=cryptid.fallground] run return fail
##init
execute if entity @s[tag=!init] run scoreboard players set @s cryptid.timer 40
execute if entity @s[tag=!init] run tag @s add init

# Spawn and Idle Animation (timer value 0-40)
execute if score @s cryptid.timer matches 20..41 run tp @s ~ ~0.2 ~ facing entity @p
execute if score @s cryptid.timer matches 1..20 run tp @s ~ ~0.05 ~ facing entity @p
execute if score @s cryptid.timer matches 0 run tp @s ~ ~ ~ facing entity @p

#### Ritual Initiate (timer value 200-300)
# Check cardinal and ordinal directions for ritual (could be optimeized with periodic checks based on global heartbeat, + # of checks counter)
execute if score @s cryptid.timer matches 300 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 290 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 280 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 270 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 260 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 250 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 240 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 230 run function cryptid:rituals/initial/checkfocus

#### Ritual Activly running (timer value 100-200)
execute if score @s cryptid.timer matches 100..200 if score .heartbeat cryptid.globalevent matches 18 run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1]
execute if score @s cryptid.timer matches 100..200 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~-4 ~ 2 0 2 0 10
execute if score @s[tag=ritual.translate] cryptid.timer matches 110 run tellraw @a[distance=..10] {"text":"Ritual Stability: ","color":"dark_purple","bold":true,"extra":[{"score":{"name":"@s","objective":"cryptid.ritual.stability"},"color":"aqua","bold":false}]}

# Generate Random Number for Ritual Outcome
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/initial/checkalter
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/random/numbergenerator


# Despawn
execute if score @s cryptid.timer matches 0 unless entity @p[distance=..8] run function cryptid:action/general/grounddeath

######### Timer
execute if score @s cryptid.timer matches 1.. run scoreboard players remove @s cryptid.timer 1