tag @s remove RD.object
execute if entity @s[tag=RD.killedByPlayer] run playsound entity.zombie_horse.death hostile @a ~ ~ ~ 5 1
playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 0.5
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace green_banner destroy
kill @e[type=item,nbt={Item:{id:"minecraft:green_banner",components:{"minecraft:banner_patterns":[{pattern:"minecraft:stripe_downright",color:lime},{pattern:"minecraft:small_stripes",color:gray},{pattern:"minecraft:curly_border",color:black},{pattern:"minecraft:bricks",color:light_gray},{pattern:"minecraft:rhombus",color:black},{pattern:"minecraft:circle",color:gray},{pattern:"minecraft:skull",color:white}]}}}]
summon item ~ ~1 ~ {Item:{id:"green_banner",components:{banner_patterns:[{pattern:stripe_downright,color:lime},{pattern:small_stripes,color:gray},{pattern:curly_border,color:black},{pattern:bricks,color:light_gray},{pattern:rhombus,color:black},{pattern:circle,color:gray},{pattern:skull,color:white}]}},PickupDelay:32767,Age:5900,Motion:[0,0.2,0]}
kill @s
particle explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0.05 2
playsound entity.zombie_horse.death hostile @a ~ ~ ~ 5 1
