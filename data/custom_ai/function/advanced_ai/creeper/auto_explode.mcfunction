execute at @s if entity @e[tag=crep_target,distance=0..8,tag=!nuka_c] run scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 100.. run data modify entity @s ignited set value 1b