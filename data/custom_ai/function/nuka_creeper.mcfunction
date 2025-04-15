execute at @s if entity @e[type=player,distance=0..16] run scoreboard players add @s ai_timer 1
execute at @s unless entity @e[type=player,distance=0..16] if score @s ai_timer matches ..1 run scoreboard players remove @s ai_timer 1
execute if score @s ai_timer matches 100.. run data modify entity @s ignited set value 1b