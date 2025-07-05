tag @s[tag=!RD.no_chase] add RD.no_chase

execute if entity @e[tag=RD.zombie.fishing] run attribute @s movement_speed base set 0
execute unless entity @s[tag=RD.zombie.fishing] run attribute @s movement_speed base reset

execute if entity @e[tag=zombies.target,distance=0..9] unless block ^ ^ ^1 #custom_ai:no_collision run scoreboard players set @s RD.block.calculator 80
execute if entity @e[tag=zombies.target,distance=0..9] unless block ^ ^ ^1 #custom_ai:no_collision run tag @s add RD.zombie.fishing
execute unless entity @e[tag=zombies.target,distance=0..9] if score @s RD.block.calculator matches ..1 run tag @s remove RD.zombie.fishing

execute if score @s RD.block.calculator matches 1.. run scoreboard players remove @s RD.block.calculator 1

execute if entity @s[tag=RD.zombie.fishing] run scoreboard players add @s ai_timer 1
execute if score @s[predicate=summonmob_main:in_hostile] ai_timer matches 60.. run function custom_ai:advanced_ai/zombie/item/fishing_rod/bobber

execute if entity @s[tag=RD.zombie.fishing] run scoreboard players add @s ai_timer_tmp 1
execute if score @s ai_timer_tmp matches 20.. run scoreboard players reset @s ai_timer_tmp