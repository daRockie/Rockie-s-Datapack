scoreboard players add @s ai_timer 0
execute if entity @e[tag=zombies.target,distance=0..8] if score @s ai_timer matches ..60 run scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches ..40 if block ~ ~1 ~ #air at @s run tp @s ~ ~-0.25 ~

scoreboard players set #mod4 ai_timer 4
execute store result score #curScore ai_timer run scoreboard players get @s ai_timer

scoreboard players operation #curScore ai_timer %= #mod4 ai_timer

# tellraw @a [{"score":{"objective": "ai_timer","name": "@s"}},"mod4=",{"score":{"objective":"ai_timer","name":"#curScore"}}]

execute if score @s ai_timer matches 60.. run scoreboard players add @s ai_timer 1

execute if score @s ai_timer matches 60..61 run tp @s ~ ~0.3 ~
execute if score @s ai_timer matches 60.. run particle minecraft:block{block_state:sand} ~ ~2 ~ 0.05 0.05 0.05 0.05 1
execute if score @s ai_timer matches 120..121 at @s run tp @s ~ ~0.3 ~
execute if score @s ai_timer matches 120.. if score #curScore ai_timer matches 3 run playsound minecraft:block.sand.step hostile @a ~ ~ ~ 1 0.5
execute if score @s ai_timer matches 120.. run particle minecraft:block{block_state:sand} ~ ~2 ~ 0.1 0.1 0.1 0.25 15
execute if score @s ai_timer matches 160.. run function custom_ai:movements/mummy/mummy_revived