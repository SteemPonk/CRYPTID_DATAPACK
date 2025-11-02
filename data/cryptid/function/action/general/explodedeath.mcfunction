playsound minecraft:cryptid.mob.death ambient @a[distance=0..15] ~ ~ ~ 1.3 0.9
particle item{item:{id:nether_wart_block}} ~ ~1 ~ 0.4 0.4 0.4 0.4 500

playsound minecraft:entity.sniffer.death ambient @a ~ ~ ~ 1 0.6

particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~1 ~ 0.6 0.6 0.6 200 20
tp @s ~ ~-420 ~
kill @s
