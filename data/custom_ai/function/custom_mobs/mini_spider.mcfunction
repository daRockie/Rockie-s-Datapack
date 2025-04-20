execute at @s if entity @e[tag=zombies_target,distance=0..8] run scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 20 run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s ai_timer matches 50.. run scoreboard players set @s ai_timer 0