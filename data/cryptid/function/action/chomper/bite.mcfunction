playsound minecraft:cryptid.chomper.bite ambient @a ~ ~ ~ 2 0.8
execute anchored eyes run particle item{item:{id:netherrack}} ^ ^1 ^1 0.5 0.2 0.5 0.2 100

execute anchored eyes positioned ^ ^ ^1 run damage @a[distance=0..2.5, sort=nearest, limit=1] 8 cryptid:chomp by @s
execute anchored eyes positioned ^ ^ ^1 run tag @a[distance=0..2.5] add cryptid.glitchscreen


execute anchored eyes positioned ^ ^-1 ^2 run function cryptid:action/chomper/break

