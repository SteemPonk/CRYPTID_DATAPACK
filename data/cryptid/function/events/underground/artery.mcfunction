playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~ ~-10 ~ 10 0.5

particle item{item:{id:stone}} ~ ~1 ~ 10 10 10 0 10000

execute positioned ^ ^ ^10 run clone ~-10 ~-10 ~-10 ~10 ~10 ~10 0 0 0

execute positioned ^ ^ ^10 run clone 0 0 0 20 20 20 ~-10 ~-15 ~-10


function cryptid:events/cryptid/flicker3