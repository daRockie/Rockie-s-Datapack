execute at @s if entity @e[tag=spider.target,distance=0..8] run scoreboard players add @s ai_timer 1
execute at @s if entity @e[tag=spider.target,distance=0..8] if score @s ai_timer matches 40..45 run summon spider ~ ~ ~ {Tags:["mini_spider","proceed","spawned"],DeathLootTable:empty,DeathTime:19,Health:1f,attributes:[{id:"minecraft:max_health",base:1},{id:"minecraft:scale",base:0.3,},{base:0.25,id:"attack_damage"}]}
execute as @e[type=spider,tag=mini_spider,predicate=!summonmob_main:in_hostile,distance=0..8] at @s run damage @s 0.000001 generic by @n[tag=spider.target]
execute if score @s ai_timer matches 60 run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s ai_timer matches 80 run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s ai_timer matches 100.. run scoreboard players reset @s ai_timer