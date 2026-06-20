scoreboard players add @s RD.ai_timer 1
scoreboard players set #mod10 RD.ai_timer 10

execute on target run tag @s add creeper.target

execute unless data entity @s Passengers run item replace entity @s armor.chest with air

execute store result score @s RD.ai_timer_2 run scoreboard players operation @s RD.ai_timer %= #mod10 RD.ai_timer

execute if score @s[nbt={ignited:0b}] RD.ai_timer_2 matches 9 run function custom_ai:movements/parachute_direction_change

execute unless block ~ ~-0.3 ~ #custom_ai:no_collision run data modify entity @s ignited set value 1b
execute unless block ~ ~-0.3 ~ #custom_ai:no_collision run data modify entity @s NoAI set value 1b

tag @n[tag=creeper.target] remove creeper.target