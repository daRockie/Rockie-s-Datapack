execute if entity @e[type=#custom_ai:inhostile,limit=1,distance=0..16] run scoreboard players add @s ai_timer 1

particle witch ~ ~2 ~ 1 1 1 0.05 2
particle enchant ~ ~2 ~ 0.5 0.5 0.5 0.05 3

execute if score @s ai_timer matches 60 at @s if entity @e[type=#custom_ai:inhostile,limit=1,distance=0..4] run function custom_ai:movements/sisha/1/pre_explode
execute if score @s ai_timer matches 80.. at @s run function custom_ai:movements/sisha/1/explode