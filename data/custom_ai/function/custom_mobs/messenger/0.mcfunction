execute if entity @e[type=#custom_ai:inhostile,limit=1,distance=0..16] run scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 60 at @s run function custom_ai:movements/sisha/1/pre_explode
execute if score @s RD.ai_timer matches 80.. if entity @n[type=#custom_ai:inhostile,distance=0..4] at @s run function custom_ai:movements/sisha/1/explode