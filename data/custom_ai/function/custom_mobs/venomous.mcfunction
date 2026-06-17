execute on target run tag @s add spider.target

execute if entity @n[tag=spider.target,distance=..7] run scoreboard players add @s ai_timer 1

execute if score @s ai_timer matches 100 run function custom_ai:movements/bloodmother/do_spider_jump

execute if score @s ai_timer matches 110 if score @s health matches ..6 run function custom_ai:movements/bloodmother/do_spider_jump

execute if score @s ai_timer matches 120.. run function custom_ai:movements/venomous/summon_web


execute if entity @n[tag=spider.target,nbt={HurtTime:8s}] run function custom_ai:movements/venomous/drain

tag @n[tag=spider.target] remove spider.target