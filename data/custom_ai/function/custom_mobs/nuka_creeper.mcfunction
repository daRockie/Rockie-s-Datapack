scoreboard players add @s ai_timer 1
execute store result score @s ai_timer_tmp run scoreboard players get @s ai_timer
scoreboard players set #tmp_20 ai_timer 20

data modify entity @s NoAI set value 1b
data modify entity @s ignited set value 1b

scoreboard players operation @s ai_timer_tmp %= #tmp_20 ai_timer

execute if score @s ai_timer matches 1 at @s run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
execute if score @s ai_timer_tmp matches 1 at @s run particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 15

execute if score @s ai_timer_tmp matches 1 at @s run playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 5 0.5
execute if score @s ai_timer_tmp matches 1 at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.05 10

execute if score @s ai_timer_tmp matches 1 if score @s ai_timer matches 160.. at @s run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 5 0.5
execute if score @s ai_timer matches 160.. at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.5 0.5 0 10