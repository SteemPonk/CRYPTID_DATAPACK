summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[25f,150f,30f]}, NoGravity:1, Invisible:1, Tags:["cryptid","cryptid.fakeworld"]}
item replace entity @e[type=minecraft:armor_stand, tag=cryptid.fakeworld,sort=nearest,limit=1] armor.head with potion[minecraft:custom_model_data=1310]



particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 5200

execute as @e[type=armor_stand, tag=cryptid.fakeworld, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfakeworld"}

stopsound @a
playsound minecraft:cryptid.ambient ambient @a[distance=0..30] ~ ~-10 ~ 10 0.2
