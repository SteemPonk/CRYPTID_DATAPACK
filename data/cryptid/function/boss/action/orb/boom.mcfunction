tag @s add dead
item replace entity @s armor.head with air
summon item_display ~-0.5 ~-0.5 ~-0.5 {Tags:["cryptid.explodeitem","bosscryptid"],billboard:"center",item:{id:"minecraft:sugar",Count:1,components:{custom_model_data:1310}},item_display:"head",transformation:[1f,0f,0f,0.0625f,0f,1f,0f,-0.6875f,0f,0f,1f,0.5f,0f,0f,0f,1f]}

scoreboard players set @s cryptid.timer 40


playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 0.1
damage @p[distance=0..5] 6 minecraft:explosion by @s from @s