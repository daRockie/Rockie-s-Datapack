execute on target run tag @s add zombies.target
# particle flame ~ ~1 ~ 0.5 0.5 0.5 0 1

scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 20 run function custom_ai:custom_mobs/magma_infection/shoot

execute if score @s RD.ai_timer matches 40 run function custom_ai:custom_mobs/magma_infection/shoot

execute if score @s RD.ai_timer matches 60 run function custom_ai:custom_mobs/magma_infection/shoot

execute if score @s RD.ai_timer matches 80 run function custom_ai:custom_mobs/magma_infection/shoot

execute if score @s RD.ai_timer matches 100.. run scoreboard players reset @s RD.ai_timer

tag @n[tag=zombies.target] remove zombies.target