execute unless predicate summonmob_main:in_hostile run data modify entity @s Silent set value 1b
execute if predicate summonmob_main:in_hostile run data modify entity @s Silent set value 0b
execute at @s if entity @e[tag=spider.target,distance=0..8] run scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 20 run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s ai_timer matches 50.. run scoreboard players add @s for 1
execute if score @s ai_timer matches 50.. run scoreboard players reset @s ai_timer

execute if score @s for matches 4.. run kill @s
