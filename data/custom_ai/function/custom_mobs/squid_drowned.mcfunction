execute at @s if entity @e[tag=zombies.target,distance=8..20] run scoreboard players add @s RD.ai_timer 1
execute if score @s RD.ai_timer matches 40 at @s anchored eyes if block ~ ~1 ~ water run function custom_ai:movements/squid_swim
execute if score @s RD.ai_timer matches 40.. run scoreboard players reset @s RD.ai_timer