scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 120.. run function custom_ai:object/flags/zombie_flag/buff
execute if score @s RD.for matches 4.. run function custom_ai:object/flags/zombie_flag/kms
particle ash ~ ~2 ~ 0.5 0.5 0.5 0.05 2

execute if entity @s[nbt={HurtTime:9s}] run function custom_ai:object/flags/zombie_flag/hurt

setblock ~ ~1 ~ green_banner{patterns:[{pattern:stripe_downright,color:lime},{pattern:small_stripes,color:gray},{pattern:curly_border,color:black},{pattern:bricks,color:light_gray},{pattern:rhombus,color:black},{pattern:circle,color:gray},{pattern:skull,color:white}]} replace
kill @e[type=item,nbt={Item:{id:"minecraft:green_banner",components:{"minecraft:banner_patterns":[{pattern:"minecraft:stripe_downright",color:lime},{pattern:"minecraft:small_stripes",color:gray},{pattern:"minecraft:curly_border",color:black},{pattern:"minecraft:bricks",color:light_gray},{pattern:"minecraft:rhombus",color:black},{pattern:"minecraft:circle",color:gray},{pattern:"minecraft:skull",color:white}]}}}]