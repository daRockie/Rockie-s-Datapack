item modify entity @s armor.head {function:"set_components",components:{item_model:"green_banner"}}

playsound entity.horse.armor hostile @a ~ ~ ~ 1 1

execute if entity @e[type=#zombies,distance=0.01..16] run function custom_ai:custom_mobs/zombie/leader/accompany

tag @s remove RD.zombie_flag_thrown

execute unless score @s RD.ai_timer_2 matches 3.. run tag @s remove RD.already_ran

scoreboard players add @s RD.ai_timer_2 1

scoreboard players reset @s RD.ai_timer